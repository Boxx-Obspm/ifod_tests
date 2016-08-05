# ifod_tests: Tests for inflightOD software
# Version & Date:   V1.2 03-03-2016, Boris Segret
# CL=2
#
# runTests.m : main program, for MATLAB or OCTAVE
# I/: scenario, with name for resulting file: "results_testNew"
# S/: results_testNew produced by inflightOD
#     test_results: log file
# F/: it runs data_extraction.m@ inflightOD with a small scenario.
#     Results must be compared with results_testNew_0 to prove non-regression

Started on Jan.5, 2016 by Boris Segret @ LESIA-ESEP, Paris Observatory.
GNU GPL license V3

This branch gathers code to test the IFOD and shall *not* contain IFOD. It tests IFOD in terms of:
- non-regression of previous features, especially interfaces
- new features to be demonstrated with well-selected, short datasets
- performances of the ifod algorithm

NOT SUITED FOR IFOD WITH N=4 MEASUREMENTS!!
