/*
 * This program is taken from Python Docs
 * It's used to run Python programs in C
*/

#include <Python.h>

int main(int argc, char **argv) {
  Py_SetProgramName(argv[0]);  /* optional but recommended */
  Py_Initialize();
  PyRun_SimpleString("from time import time,ctime\n"
                     "print 'Today is',ctime(time())\n");
  // or use PyRun_SimpleFile(FILE *fp, const char *filename) to run a program file
  Py_Finalize();
  return 0;
}
