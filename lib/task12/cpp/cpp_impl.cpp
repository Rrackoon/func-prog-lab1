#include <iostream>
#include <cmath>
using namespace std;
int divisors_count(int n){
    int count = 0;
    for(int i=1;i*i <=n; i++){
        if(n%i ==0){
            count += (i*i == n) ? 1 : 2;
        }
    }
    return count;
}

int main(){
    int limit =500;
    for( int n=1;; n++){
        int t = n*(n+1)/2;
        if(divisors_count(t) > limit){
            cout<< t << " "<<divisors_count(t);
            break;
        }
    }
}
//   /opt/homebrew/bin/g++-15 -std=c++17 cpp_impl.cpp -o cpp_impl
//      ./cpp_impl
