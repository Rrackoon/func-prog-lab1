#include <vector>
#include <algorithm>
using namespace std;

static int solve_triangle(vector<vector<int>> triangle) {
    for (int row = (int)triangle.size() - 2; row >= 0; row--) {
        for (int col = 0; col < (int)triangle[row].size(); col++) {
            triangle[row][col] += max(triangle[row + 1][col], triangle[row + 1][col + 1]);
        }
    }
    return triangle[0][0];
}

// экспортируемая функция для Python
extern "C" int solve(int* arr, int n) {
    vector<vector<int>> triangle(n);
    int idx = 0;
    for (int i = 0; i < n; i++) {
        triangle[i].resize(i + 1);
        for (int j = 0; j <= i; j++) {
            triangle[i][j] = arr[idx++];
        }
    }
    return solve_triangle(triangle);
}
