#!/bin/bash
#
#
#
# Traces:
#    astar_313B
#    bfs
#    cc
#    mcf_46B
#    omnetpp_340B
#    soplex_66B
#    sphinx3_2520B
#    xalancbmk_99B
#
#
# Experiments:
#    hermes_o: --warmup_instructions=100000000 --simulation_instructions=500000000 --llc_replacement_type=ship --config=$(HERMES_HOME)/config/nopref.ini --num_rob_partitions=3 --rob_partition_size=64,128,320 --rob_frontal_partition_ids=0 --rob_dorsal_partition_ids=2 --config=$(HERMES_HOME)/config/ocp_hermes.ini --config=$(HERMES_HOME)/config/hermes_base.ini --ddrp_req_latency=6
#
#
#
#
mycondor -- /var/local/sun/Hermes/bin/stats_attempt_two --warmup_instructions=100000000 --simulation_instructions=500000000 --llc_replacement_type=ship --config=/var/local/sun/Hermes/config/nopref.ini --num_rob_partitions=3 --rob_partition_size=64,128,320 --rob_frontal_partition_ids=0 --rob_dorsal_partition_ids=2 --config=/var/local/sun/Hermes/config/ocp_hermes.ini --config=/var/local/sun/Hermes/config/hermes_base.ini --ddrp_req_latency=6  -traces /scratch/cluster/qduong/traces/champsim/astar_313B.trace.gz > astar_313B_hermes_o.out &
mycondor -- /var/local/sun/Hermes/bin/stats_attempt_two --warmup_instructions=100000000 --simulation_instructions=500000000 --llc_replacement_type=ship --config=/var/local/sun/Hermes/config/nopref.ini --num_rob_partitions=3 --rob_partition_size=64,128,320 --rob_frontal_partition_ids=0 --rob_dorsal_partition_ids=2 --config=/var/local/sun/Hermes/config/ocp_hermes.ini --config=/var/local/sun/Hermes/config/hermes_base.ini --ddrp_req_latency=6  -traces /scratch/cluster/qduong/traces/champsim/bfs.trace.gz > bfs_hermes_o.out &
mycondor -- /var/local/sun/Hermes/bin/stats_attempt_two --warmup_instructions=100000000 --simulation_instructions=500000000 --llc_replacement_type=ship --config=/var/local/sun/Hermes/config/nopref.ini --num_rob_partitions=3 --rob_partition_size=64,128,320 --rob_frontal_partition_ids=0 --rob_dorsal_partition_ids=2 --config=/var/local/sun/Hermes/config/ocp_hermes.ini --config=/var/local/sun/Hermes/config/hermes_base.ini --ddrp_req_latency=6  -traces /scratch/cluster/qduong/traces/champsim/cc.trace.gz > cc_hermes_o.out &
mycondor -- /var/local/sun/Hermes/bin/stats_attempt_two --warmup_instructions=100000000 --simulation_instructions=500000000 --llc_replacement_type=ship --config=/var/local/sun/Hermes/config/nopref.ini --num_rob_partitions=3 --rob_partition_size=64,128,320 --rob_frontal_partition_ids=0 --rob_dorsal_partition_ids=2 --config=/var/local/sun/Hermes/config/ocp_hermes.ini --config=/var/local/sun/Hermes/config/hermes_base.ini --ddrp_req_latency=6  -traces /scratch/cluster/qduong/traces/champsim/mcf_46B.trace.gz > mcf_46B_hermes_o.out &
mycondor -- /var/local/sun/Hermes/bin/stats_attempt_two --warmup_instructions=100000000 --simulation_instructions=500000000 --llc_replacement_type=ship --config=/var/local/sun/Hermes/config/nopref.ini --num_rob_partitions=3 --rob_partition_size=64,128,320 --rob_frontal_partition_ids=0 --rob_dorsal_partition_ids=2 --config=/var/local/sun/Hermes/config/ocp_hermes.ini --config=/var/local/sun/Hermes/config/hermes_base.ini --ddrp_req_latency=6  -traces /scratch/cluster/qduong/traces/champsim/omnetpp_340B.trace.gz > omnetpp_340B_hermes_o.out &
mycondor -- /var/local/sun/Hermes/bin/stats_attempt_two --warmup_instructions=100000000 --simulation_instructions=500000000 --llc_replacement_type=ship --config=/var/local/sun/Hermes/config/nopref.ini --num_rob_partitions=3 --rob_partition_size=64,128,320 --rob_frontal_partition_ids=0 --rob_dorsal_partition_ids=2 --config=/var/local/sun/Hermes/config/ocp_hermes.ini --config=/var/local/sun/Hermes/config/hermes_base.ini --ddrp_req_latency=6  -traces /scratch/cluster/qduong/traces/champsim/soplex_66B.trace.gz > soplex_66B_hermes_o.out &
mycondor -- /var/local/sun/Hermes/bin/stats_attempt_two --warmup_instructions=100000000 --simulation_instructions=500000000 --llc_replacement_type=ship --config=/var/local/sun/Hermes/config/nopref.ini --num_rob_partitions=3 --rob_partition_size=64,128,320 --rob_frontal_partition_ids=0 --rob_dorsal_partition_ids=2 --config=/var/local/sun/Hermes/config/ocp_hermes.ini --config=/var/local/sun/Hermes/config/hermes_base.ini --ddrp_req_latency=6  -traces /scratch/cluster/qduong/traces/champsim/sphinx3_2520B.trace.gz > sphinx3_2520B_hermes_o.out &
mycondor -- /var/local/sun/Hermes/bin/stats_attempt_two --warmup_instructions=100000000 --simulation_instructions=500000000 --llc_replacement_type=ship --config=/var/local/sun/Hermes/config/nopref.ini --num_rob_partitions=3 --rob_partition_size=64,128,320 --rob_frontal_partition_ids=0 --rob_dorsal_partition_ids=2 --config=/var/local/sun/Hermes/config/ocp_hermes.ini --config=/var/local/sun/Hermes/config/hermes_base.ini --ddrp_req_latency=6  -traces /scratch/cluster/qduong/traces/champsim/xalancbmk_99B.trace.gz > xalancbmk_99B_hermes_o.out
