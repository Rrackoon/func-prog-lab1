import unittest
import ctypes
from typing import List

lib = ctypes.CDLL('./lib/task18/cpp_impl/triangle.so')
lib.solve.argtypes = [ctypes.POINTER(ctypes.c_int), ctypes.c_int]
lib.solve.restype = ctypes.c_int

def vector_to_c_array(triangle: List[List[int]]) -> ctypes.POINTER(ctypes.c_int):
    flat = [item for sublist in triangle for item in sublist]
    arr = (ctypes.c_int * len(flat))(*flat)
    return arr

class TestTriangle(unittest.TestCase):
    def test_simple(self):
        triangle = [[3], [7, 4], [2, 4, 6]]
        arr = vector_to_c_array(triangle)
        self.assertEqual(lib.solve(arr, len(triangle)), 14)

    def test_single(self):
        triangle = [[5]]
        arr = vector_to_c_array(triangle)
        self.assertEqual(lib.solve(arr, len(triangle)), 5)

    def test_larger(self):
        triangle = [[1], [2, 3], [4, 5, 6]]
        arr = vector_to_c_array(triangle)
        self.assertEqual(lib.solve(arr, len(triangle)), 10)

if __name__ == '__main__':
    unittest.main()