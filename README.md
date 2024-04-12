# BCL Convert Doker

Download the latest version of bcl-convert from https://emea.support.illumina.com/sequencing/sequencing_software/bcl-convert/downloads.html

```bash
wget https://s3.amazonaws.com/webdata.illumina.com/downloads/software/bcl-convert/bcl-convert-4.2.7-2.el7.x86_64.rpm -O bcl-convert.rpm
 
```
Build the image

```bash
docker build . -t bcl-convert:latest -t bcl-convert:4.2.7
```
