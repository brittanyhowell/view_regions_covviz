#!/bin/bash -euo pipefail
covviz --min-samples 8 --sex-chroms X,Y --exclude '^GL|^hs|EBV$|M$|MT$|^NC|_random$|Un_|^HLA\-|_alt$|hap\d+$'         --z-threshold 3.5 --distance-threshold 150000         --slop 500000 --ped NF-indexcov.ped  --skip-norm NF-indexcov.bed.gz
