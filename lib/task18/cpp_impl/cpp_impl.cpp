#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int solve( vector<vector<int>> triangle){
    for( int row = triangle.size() - 2; row > 0; row--){
        for(int col = 0; col < triangle[row]size(); col++){
            triangle[row][col] += max(triangle[row + 1][col], triangle[row + 1][col + 1]);
        }
    }
}
int main(){
    int n;
    cin>>n;
    vector<vector<int>> triangle;

    for(int i=0; i<n; i++){
        triangle[i].resize(i + 1);
        for(int j=0; j<i; j++){
            cin>>triangle[i][j];
        }
    }

    cout<<solve(triangle);
}