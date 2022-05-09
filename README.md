------------------------------------------------------- About -------------------------------------------------------

Run improved-g++.cpp for an executable CVTree application to compute genome similarity using frequency vectors OR
Run improved-original.cpp for original version of CV Tree in Visual Studio  OR
Run improved.cpp for parallelized version of CV Tree in Visual Studio
(navigate Visual Studio solution working directory in Debugging properties to current directory for the input files)

------------------------------------------------------- Pre-requisites -------------------------------------------------------

A version of compatible compiler with support for OpenMP.

------------------------------------------------------- Compilation -------------------------------------------------------

In terminal, type "make" to compile the application. If GNU compiler is not available, please compile with "make CC={supported compiler}".

Depending on which type of compiler loaded, the flag for openmp support is to be change. View https://hpc-wiki.info/hpc/How_to_Use_OpenMP for more information about this.

COMPILER	FLAG
GNU		-fopenmp
Intel		-qopenmp
Clang		-fopenmp
Oracle		-xopenmp
NAG Fortran	-openmp

If OpenMP is not supported/enabled in the flag during compilation, the application will be built as the best sequential program.

------------------------------------------------------- Usage -------------------------------------------------------

./cvtree

CVTree is multithreaded with OpenMP support, the number of threads can be controlled with OpenMP environment variable, OMP_NUM_THREADS.
If you forget to set OMP_NUM_THREADS to any value, the default value of your cluster environment will be used.
If you want to explicitly set the number of threads to be used for the application OpenMP, set the OMP_NUM_THREADS value.

One way for doing it is:-
$ OMP_NUM_THREADS=12 ./cvtree

Another:-
$ export OMP_NUM_THREADS=24	(then run the application)

------------------------------------------------------- Output -------------------------------------------------------
 
Upon running, the program reads the "list.txt" text file in the working directory containing the information of number of bacteria 
and bacteria names. The number of bacteria to be compared must be specified at first line of the text file, followed by one file 
name per line without file extension. It will then read the sequence files from the data folder in the working directory and output 
the results onto the console. 

If "Segmentation fault (core dumped) is output onto the console", then you should check if the files and the folders are correctly 
placed as mentioned previously.

Example output:-
```
0  1 -> 0.03363286346937661986
0  2 -> 0.01200145443471613976
0  3 -> 0.00166977696066470532
0  4 -> 0.00550707828505980160
0  5 -> 0.00361159010210996027
...
...
...
time elapsed: 23.890945 seconds
````
