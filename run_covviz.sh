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






### 12 Feb: brwnj updated the code, but the nextflow command could not run: 

# Command error:
#   Unable to find image 'brwnj/covviz:v1.3.1' locally  docker: Error response from daemon: manifest for brwnj/covviz:v1.3.1 not found: manifest unknown: manifest unknown.
#   See 'docker run --help'.

# Commands tried: 
# sudo docker pull brwnj/covviz:latest 
## The -latest didn't work, so I thought I needed to pull manually - but it still could not find

# sudo nextflow run brwnj/covviz -profile docker --indexes '/data/iget/test/*crai' --fai '/home/ubuntu/data/hg38.fa.fai'  
## It did not work with or without the -latest tag
