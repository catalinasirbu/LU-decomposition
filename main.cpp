#include <iostream>
#include <vector>
#include <ctime>
#include <fstream>

int size;
std::vector<std::vector<double>> l, u, mat;
clock_t begin, end;
std::ofstream fp;

void printMatrix(const std::vector<std::vector<double>>& m) {
    std::cout << "\n \n";

    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {
            std::cout << "|  " << m[i][j] << "  | ";
        }
        std::cout << std::endl;
    }
}

void decompose(std::vector<std::vector<double>>& m) {
    begin = clock();
    for (int j = 0; j < size - 1; ++j) {
        for (int i = j + 1; i < size; ++i) {
            double factor = m[i][j] / m[j][j];
            for (int k = 0; k < size; ++k) {
                u[i][k] = m[i][k] - (m[j][k] * factor);
            }
            l[i][j] = factor;
        }
        for (int i = 0; i < size; ++i) {
            for (int k = 0; k < size; ++k) {
                m[i][k] = u[i][k];
            }
        }
    }
    end = clock();
}

void generateMatrix(int size) {
    srand(static_cast<unsigned>(time(nullptr)));
    mat.resize(size, std::vector<double>(size));
    u.resize(size, std::vector<double>(size));
    l.resize(size, std::vector<double>(size, 0.0));
    for (int i = 0; i < size; ++i) {
        for (int j = i; j < size; ++j) {
            mat[i][j] = i + 1;
            mat[j][i] = i + 1;
            u[i][j] = mat[i][j];
            u[j][i] = mat[j][i];
        }
    }
    decompose(mat);
}

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cerr << "Matrix Size missing in the arguments \n";
        return -1;
    }
    size = std::strtol(argv[1], nullptr, 10);
    fp.open("output.txt", std::ios::app);
    generateMatrix(size);
    double runtime = static_cast<double>(end - begin) / CLOCKS_PER_SEC;
    fp << size << " " << runtime << "\n";
    fp.close();
    std::cout << "Matrix size: " << size << " Runtime: " << runtime << " seconds\n";
    return 0;
}
