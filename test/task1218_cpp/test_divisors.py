import unittest
import ctypes

lib = ctypes.CDLL('./lib/task12/cpp/divisors.so')
lib.divisors_count.argtypes = [ctypes.c_int]
lib.divisors_count.restype = ctypes.c_int

class TestDivisors(unittest.TestCase):
    def test_basic(self):
        self.assertEqual(lib.divisors_count(1), 1)
        self.assertEqual(lib.divisors_count(6), 4)
        self.assertEqual(lib.divisors_count(28), 6)
        self.assertEqual(lib.divisors_count(100), 9)

    def test_edge(self):
        self.assertEqual(lib.divisors_count(0), 0)
        self.assertEqual(lib.divisors_count(13), 2)

if __name__ == '__main__':
    unittest.main()