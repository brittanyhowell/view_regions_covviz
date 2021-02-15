# Summary of output: revision e49ac5ef5d

15 Feb

## Test 1: 15 genomes

Location: `test-e49ac5ef5d/15Genomes`

Outcome: Build was successful, html was created with no errors. html loads, but does not show expected area of grey with occassional coloured lines - instead shows entire upper half as grey:
![15Genomes-cov](https://github.com/brittanyhowell/view_regions_covviz/blob/master/test-e49ac5ef5d/15Genomes/covviz-ss-15Genomes-chr17.png)

### bed file

Upon opening the `NF-indexcov.bed.gz` something seems very wrong:

```bash
#chrom  start   end     EGAN00001216377 EGAN00001212262 EGAN00001214488 EGAN000012144   EGAN00001214515
chr1    0       16384   2.28e+04        2.64            2.2e+04         2.69            2.94e+04        
chr1    16384   32768   2.28e+04        2.64            2.2e+04         2.69            2.94e+04        
chr1    32768   49152   2.28e+04        1.6             2.2e+04         2.69            2.94e+04        
chr1    49152   65536   2.28e+04        1.6             2.2e+04         2.37            2.94e+04        
chr1    65536   81920   1.94e+04        2.14            2.57e+04        2.37            4.06e+04
chr1    81920   98304   1.94e+04        2.14            2.57e+04        2.37            4.06e+04
chr1    98304   114688  1.94e+04        2.14            2.57e+04        2.97            4.06e+04
chr1    114688  131072  1.94e+04        2.34            2.57e+04        2.97            4.06e+04
chr1    131072  147456  1.94e+04        2.34            2.57e+04        2.97            4.06e+04
```

The pngs (eg `NF-indexcov-depth-chr16` below) showing the depth across the chr look normal for some chromosomes but not others.

![15Genomes-cov-chr16](https://github.com/brittanyhowell/view_regions_covviz/blob/master/test-e49ac5ef5d/15Genomes/indexcov/NF-indexcov-depth-chr16.png)

To get an idea of how many records there were for each of the chroms I checked the number of lines per chrom in the BED:

```bash
   1 #chrom
15194 chr1
14781 chr10
12100 chr11
11076 chr12
10421 chr13
9724 chr14
5509 chr15
4903 chr16
3931 chr17
3480 chr18
   9 chr2
   9 chr20
   8 chr21
  12 chr22
   1 chr3
   2 chr4
 114 chr5
  17 chr6
   6 chr7
   8 chr8
   2 chr9
   4 chrX
  43 chrY
```

Seeing such a drop off in records per chrom is concerning - I opened a few of the CRAMs up in IGV to make sure there were definitely reads on chr19 (which was not mentioned in the BED file). There are indeed reads.

## Test 2: 2 genomes

The ped files in Test1 showed some curious values for CNchrX among others. So I picked two samples showing more normal values in the ped file as well as sensible values in the bed file (EGAN00001214535 & EGAN00001212262) and ran with those.

Location: `test-e49ac5ef5d/2Genomes-2262-4535`

Outcome: Build was successful, html was created with no errors. html loads, and shows two nicely coloured lines:
![2Genomes-cov-chr1](https://github.com/brittanyhowell/view_regions_covviz/blob/master/test-e49ac5ef5d/2Genomes-2262-4535/covviz-ss-2Genomes-chr1.png)

However this was not consistent throughout all chromosomes. There was once again no record for chr19, and it seems that chr18 cuts off part way through:

![2Genomes-cov-chr18](https://github.com/brittanyhowell/view_regions_covviz/blob/master/test-e49ac5ef5d/2Genomes-2262-4535/covviz-ss-2Genomes-chr18.png)

Just, a sanity check - I opened the CRAMs in IGV to check that there are reads there:

![2Genomes-IGV](https://github.com/brittanyhowell/view_regions_covviz/blob/master/test-e49ac5ef5d/2Genomes-2262-4535/igv_chr19_3Genomes.png)

I am not sure if the issue is in the CRAMs or in the way they are being converted into coverage.
