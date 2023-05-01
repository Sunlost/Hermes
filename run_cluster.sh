#!/bin/bash

PATH="/u/sun/cs395t/final_proj"

while read TRACE; do
    SCRIPT_FILE="${TRACE}.sh"
    CONDOR_FILE="${TRACE}.condor"

    # create script file
    echo "#!/bin/bash" > ${SCRIPT_FILE}
    echo "${PATH}/bin/stats_attempt_two --warmup_instructions=75000000 --simulation_instructions=300000000 --llc_replacement_type=ship --config=${PATH}/config/nopref.ini --num_rob_partitions=3 --rob_partition_size=64,128,320 --rob_frontal_partition_ids=0 --rob_dorsal_partition_ids=2 --config=${PATH}/config/ocp_hermes.ini --config=${PATH}/config/hermes_base.ini --ddrp_req_latency=6  -traces /scratch/cluster/qduong/gtraces/${TRACE} &> output/${TRACE}.out" >> ${SCRIPT_FILE}
    /bin/chmod +x ${SCRIPT_FILE}

    # # create condor file
    /u/sun/cs395t/final_proj/condorize.sh false ${TRACE}

    # # submit the condor file
    /lusr/opt/condor/bin/condor_submit ${CONDOR_FILE}
done < traces.txt
