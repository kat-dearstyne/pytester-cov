#!/bin/sh -l

PYTEST_ROOT_DIR=$1
PYTEST_TESTS_DIR=$2
COV_OMIT_LIST=$3
REQUIREMENTS_FILE=$4
COV_THRESHOLD_SINGLE=$5
COV_THRESHOLD_TOTAL=$6
PYTHON_VERSION=$7

echo entrypoint top 1 $(ls)

# cd /docker-action
echo "creating docker image with python version: $PYTHON_VERSION"

echo entrypoint top 2 $(ls)

# here we can make the construction of the image as customizable as we need
# and if we need parameterizable values it is a matter of sending them as inputs
docker build -t docker-action --build-arg python_version="$PYTHON_VERSION" -f /docker-action/Dockerfile \
. && docker run docker-action \
$PYTEST_ROOT_DIR $PYTEST_TESTS_DIR $COV_OMIT_LIST $REQUIREMENTS_FILE $COV_THRESHOLD_SINGLE $COV_THRESHOLD_TOTAL
