## Usage: Wrapper for visualising CRAMs with covviz
## Author: Brittany Howell
## Date: 11th February 2021


ssh -XY -i ~/theta.key ubuntu@172.27.20.23

    
sudo nextflow run brwnj/covviz -latest -profile docker --indexes '/data/iget/test/*crai' --fai '/home/ubuntu/data/hg38.fa.fai'


# test with one
# scp -r -i ~/theta.key ubuntu@172.27.20.23:/home/ubuntu/data/work/59/c592a1f3152eb28e57e4b8e34e0de8/ ./
# mv c592a1f3152eb28e57e4b8e34e0de8/ test-one-genome
## Produces results html but when opened in browser (ff/chrom) it remains on 'Loading'



# test with two 
# scp -r -i ~/theta.key ubuntu@172.27.20.23:/home/ubuntu/data/work/08/181a9df60ccb8461e2ec3e2d93d422/ ./
# mv 181a9df60ccb8461e2ec3e2d93d422/ test-two-genomes
## Produces no html - errors in build.

## test with ten 
