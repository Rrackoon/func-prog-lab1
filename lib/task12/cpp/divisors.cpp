#include <cmath>

extern "C" int divisors_count(int n) {
    if (n <= 0) return 0; 

    int count = 0;
    for (int i = 1; i * i <= n; i++) {
        if (n % i == 0) {
            count += (i * i == n) ? 1 : 2;
        }
    }
    return count;
}

static int solve(int n){
    int limit =500;
    for( int n=1;; n++){
        int t = n*(n+1)/2;
        if(divisors_count(t) > limit){
            return  t;
            break;
        }
    }

}