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



### 12 Feb: brwnj updated the code, but the nextflow command could not run: 

# Command error:
#   Unable to find image 'brwnj/covviz:v1.3.1' locally  docker: Error response from daemon: manifest for brwnj/covviz:v1.3.1 not found: manifest unknown: manifest unknown.
#   See 'docker run --help'.

# Commands tried: 
# sudo docker pull brwnj/covviz:latest 
## The -latest didn't work, so I thought I needed to pull manually - but it still could not find

# sudo nextflow run brwnj/covviz -profile docker --indexes '/data/iget/test/*crai' --fai '/home/ubuntu/data/hg38.fa.fai'  
## It did not work with or without the -latest tag


# sudo docker run brwnj/covviz goleft indexcov --sex X,Y --excludepatt "^GL|^hs|EBV$|M$|MT$|^NC|_random$|Un_|^HLA\-|_alt$|hap\d+$" --directory NF --fai /home/ubuntu/data/hg38.fa.fai 19540644.HXV2.paired308.c7a5bd8bc6.cram.crai 19635806.HXV2.paired308.db40240a8c.cram.crai 15253278.HXV2.paired308.2caff4e3cd.cram.crai 19637582.HXV2.paired308.0172deaa5a.cram.crai 18939364.HXV2.paired308.80922b51f5.cram.crai 14956284.HXV2.paired308.d7c076a5b2.cram.crai 19540613.HXV2.paired308.3a7627e6a3.cram.crai 15253254.HXV2.paired308.38aa70d346.cram.crai 15253242.HXV2.paired308.d58bce2e9e.cram.crai 15778186.HXV2.paired308.e0dcf99eae.cram.crai 
# mv NF/* .


###### 1.3.1 test (feb12 late)
sudo nextflow run brwnj/covviz -latest -profile docker --indexes '/data/iget/test/*crai' --fai '/home/ubuntu/data/hg38.fa.fai'

# scp -r -i ~/theta.key ubuntu@172.27.20.23:/home/ubuntu/data/results ./

# htmls were built
# But html does not load in browser. 
# Proportions covered tab can show coverage by chromosome but only after chr menu has been toggled