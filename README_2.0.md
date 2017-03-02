# ifod_tests: Tests for inflightOD software
# Version & Date:   V2.0 02-03-2017, Boris Segret
# CL=2
#
# runTests.m : main program, for MATLAB or OCTAVE
# I/: scenario
# S/: results produced by IFOD
#     test_results: log file
# F/: it runs data_extraction.m with a small scenario.

Started on Jan.5, 2016 by Boris Segret @ LESIA-ESEP, Paris Observatory.
GNU GPL license V3

This branch gathers code to test the IFOD and shall *not* contain IFOD. It tests IFOD in terms of:
- non-regression of previous features, especially interfaces
- new features to be demonstrated with well-selected, short datasets
- functional validation (performance tests require full datasets)

NOT SUITED FOR IFOD WITH N=4 MEASUREMENTS!!
