#!/bin/bash
set x

cd $WORKSPACE/$SCM_TARGET_DIR/dummyApp && phpunit -c phpunit.xml --verbose --testdox-html $UNIT_TESTS_RESULTS_HTML_DIR_dummy'/'$UNIT_TESTS_RESULTS_HTML_FILENAME_dummy --log-junit $UNIT_TESTS_RESULTS_FILENAME_JUNITXML_dummy --coverage-html $UNIT_TESTS_RESULTS_COVERAGE_HTMLDIR_dummy --coverage-clover $UNIT_TESTS_RESULTS_FILENAME_COVERAGEXML_dummy 
RESULT=$?

exit RESULT
