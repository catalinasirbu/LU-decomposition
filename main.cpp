#include <iostream>
#include <ctime>
#include <fstream>
#include <omp.h>

int size;
double *l;
double *u;
double *mat;
clock_t begin, end;
std::ofstream fp;

inline void printMatrix(double *m) {
    std::cout << "\n\n";
    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {
            std::cout << "| " << m[i * size + j] << " | ";
        }
        std::cout << std::endl;
    }
}

void decompose(double *m) {
    begin = clock();

    double *factor = new double[size];

    #pragma omp parallel
    {
        #pragma omp single
        {
            std::cout << "Number of threads used in decompose: " << omp_get_num_threads() << std::endl;
        }
    }

    for (int j = 0; j < size - 1; ++j) {
        #pragma omp parallel for
        for (int i = j + 1; i < size; ++i) {
            factor[i] = m[i * size + j] / m[j * size + j];
            l[i * size + j] = factor[i];
        }

        #pragma omp parallel for collapse(2)
        for (int i = j + 1; i < size; ++i) {
            for (int k = j; k < size; ++k) {
                m[i * size + k] -= factor[i] * m[j * size + k];
                u[i * size + k] = m[i * size + k];
            }
        }
    }

    delete[] factor;

    end = clock();
}

void generateMatrix(int size) {
    srand(static_cast<unsigned>(time(nullptr)));
    mat = new double[size * size];
    u = new double[size * size];
    l = new double[size * size]();

    #pragma omp parallel for collapse(2)
    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {
            mat[i * size + j] = (i <= j) ? i + 1 : j + 1;
            u[i * size + j] = mat[i * size + j];
        }
    }

    decompose(mat);
}

void freeMatrix(double *matrix) {
    delete[] matrix;
}

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cerr << "Matrix Size missing in the arguments \n";
        return -1;
    }
    size = std::strtol(argv[1], nullptr, 10);

    omp_set_num_threads(8);  // Set the number of threads here

    #pragma omp parallel
    {
        #pragma omp single
        {
            std::cout << "Number of threads used in main: " << omp_get_num_threads() << std::endl;
        }
    }

    fp.open("output.txt", std::ios::app);
    generateMatrix(size);
    double runtime = static_cast<double>(end - begin) / CLOCKS_PER_SEC;
    fp << size << " " << runtime << "\n";
    fp.close();
    std::cout << "Matrix size: " << size << " Runtime: " << runtime << " seconds\n";
    freeMatrix(mat);
    freeMatrix(u);
    freeMatrix(l);
    return 0;
}
