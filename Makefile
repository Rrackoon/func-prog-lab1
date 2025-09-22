CXX = g++
PYTHON = python3

UNAME_S := $(shell uname -s)

CXXFLAGS = -std=c++17 -Wall -fPIC
ifeq ($(UNAME_S),Darwin)
    CXXFLAGS += -stdlib=libc++
endif

build_divisors:
	$(CXX) $(CXXFLAGS) -shared -o lib/task12/cpp/divisors.so lib/task12/cpp/divisors.cpp

build_triangle:
	$(CXX) $(CXXFLAGS) -shared -o lib/task18/cpp_impl/triangle.so lib/task18/cpp_impl/triangle.cpp

run_cpp_tests: build_divisors build_triangle
	$(PYTHON) test/task1218_cpp/test_divisors.py
	$(PYTHON) test/task1218_cpp/test_triangle.py

clean:
	rm -f lib/task12/cpp/divisors.so lib/task18/cpp_impl/triangle.so

.PHONY: build_divisors build_triangle run_cpp_tests clean
