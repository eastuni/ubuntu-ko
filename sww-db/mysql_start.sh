#!/bin/bash

runSupervisor() {
    echo "Running the run_supervisor function."
    supervisord -n
}

# Call all functions
runSupervisor
