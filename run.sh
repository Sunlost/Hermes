#!/bin/bash

# Check that args are correct
if [ "$#" -ne 2 ]; then
    echo "Incorrect # of arguments:"
    echo "Usage: ./build.sh branch_predictor cache_replacement_policy"
    exit
fi

# Simulation parameters
TRACE_DIR="/u/qduong/traces"
WARM_INS=25
SIM_INS=100
BRANCH_PRED=$1
CACHE_REPL=$2

BINARY="bin/${BRANCH_PRED}_${CACHE_REPL}_champsim"
OUTPUT_DIR="output/${BRANCH_PRED}_${CACHE_REPL}_test"

# Ensure output dir exists
if test ! -d ${OUTPUT_DIR}; then
    mkdir -p ${OUTPUT_DIR}
fi

# Ensure binary exists
if test ! -f ${BINARY} ; then
    echo "No binary found for ${BRANCH_PRED}_${CACHE_REPL}"
    echo "Build champsim before running it"
    exit
fi

# Run our cache replacement policy / branch predictor on astar_313B
echo "Running ${BRANCH_PRED}_${CACHE_REPL} on astar_313B ..."
${BINARY} -warmup_instructions ${WARM_INS}000000 -simulation_instructions ${SIM_INS}000000 -traces ${TRACE_DIR}/astar_313B.trace.gz &> ${OUTPUT_DIR}/astar_313B.txt
