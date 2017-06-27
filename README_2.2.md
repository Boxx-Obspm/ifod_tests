# ifod_tests: Tests for inflightOD software
# Version & Date:   V2.2 27-Jun-2017, Boris Segret
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

Content:
# (*- file modified in this delivery)
# (-  file not modified in this delivery)

# *- README_v2.2.md: this note
# - LICENSE, GNU Version 3, 29 June 2007
# - .gitignore: settings for github CVS
# - runTests.m, v1.x (CL=0)

# Usefull tools (adaptability to IFOD v1.9 not tested):
# - prodEPHfiles.m, v1.1 (CL=2)
# - JD2VTS_traj.m, v1.1 (CL=2)
# - JD2VTS_eph.m, v1.1 (CL=2)
# - fixEPHfiles.m, v1.1 (CL=2)

# ./datasets/*, various files to test IFOD
# ./outs/*, example of results
