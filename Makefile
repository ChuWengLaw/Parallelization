CC = g++

cvtree: improved-g++.cpp
	$(CC) -o cvtree improved-g++.cpp -std=c++17 -fopenmp -O3 -g -w