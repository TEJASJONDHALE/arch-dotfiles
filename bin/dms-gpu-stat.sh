#!/bin/bash
# Get GPU utilization (returns simple number like '15')
nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits
