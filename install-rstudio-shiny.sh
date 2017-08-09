#!/bin/bash
# sudo yum install R
# wget https://download2.rstudio.org/rstudio-server-rhel-1.0.153-x86_64.rpm
# sudo yum install --nogpgcheck rstudio-server-rhel-1.0.153-x86_64.rpm
# sudo su - \
# -c "R -e \"install.packages('shiny', repos='https://cran.rstudio.com/')\""
wget https://download3.rstudio.org/centos5.9/x86_64/shiny-server-1.5.3.838-rh5-x86_64.rpm
sudo yum install --nogpgcheck shiny-server-1.5.3.838-rh5-x86_64.rpm
