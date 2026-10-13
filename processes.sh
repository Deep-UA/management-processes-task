#!/bin/bash
# processes.sh - raise CPU Load Average above 80%


for i in 1 2 3 4; do
    cat /dev/urandom | bzip2 > /dev/null &
done


for i in $(seq 1 12); do
    sleep 3
    echo "Load Average: $(cut -d ' ' -f1 /proc/loadavg)"
    ps -eo pid,comm,%cpu --sort=-%cpu | head -n 4
    echo "---"
done


