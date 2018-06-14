#!/bin/bash

export TF_LOG=TRACE
export TF_LOG_PATH="/Users/dc/terraform"
echo "activating conda env terraform"
#source "/Users/dc/miniconda3/bin/activate /Users/dc/miniconda3/envs/terraform"
source_file='/Users/dc/miniconda3/bin/activate'

source ${source_file}

