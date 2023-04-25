#!/bin/bash

# Check that args are correct
if [ "$#" -ne 2 ]; then
    echo "Incorrect # of arguments:"
    echo "Usage: ./build.sh branch_predictor cache_replacement_policy"
    exit
fi

# Simulation parameters
CHAMP_PATH="$(pwd)"
TRACE_DIR="/scratch/cluster/qduong/traces/champsim"
WARM_INS=25
SIM_INS=100
BRANCH_PRED=$1
CACHE_REPL=$2

BINARY="bin/${BRANCH_PRED}_${CACHE_REPL}_champsim"
OUTPUT_DIR="output/${BRANCH_PRED}_${CACHE_REPL}"

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

# Run our cache replacement policy / branch predictor on each trace
while read TRACE; do
    SCRIPT_FILE="${OUTPUT_DIR}/${TRACE}.sh"
    CONDOR_FILE="${OUTPUT_DIR}/${TRACE}.condor"

    # create script file
    echo "#!/bin/bash" > ${SCRIPT_FILE}
    echo "${CHAMP_PATH}/${BINARY} -warmup_instructions ${WARM_INS}000000 -simulation_instructions ${SIM_INS}000000 -traces ${TRACE_DIR}/${TRACE}.trace.gz &> ${CHAMP_PATH}/${OUTPUT_DIR}/${TRACE}.txt" >> ${SCRIPT_FILE}
    chmod +x ${SCRIPT_FILE}

    # create condor file
    /u/qduong/traces/condorize.sh false ${OUTPUT_DIR} ${TRACE}

    # submit the condor file
    /lusr/opt/condor/bin/condor_submit ${CONDOR_FILE}
done < traces.txt
