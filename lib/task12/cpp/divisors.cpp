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
