#### Installing SPOCK from github

### First we need devtools to get access to install_github.
### INSTALLATION OF DEVTOOLS (This is a necessary first step)
# devtools provides the infrastructure for installing from github
# and it has a tool requirement outside of standard R for each
# O/S to complete. Full details can be found from r-project
# at: https://www.r-project.org/nosvn/pandoc/devtools.html
# A quick summary:
# for Windows you will need rtools: https://cran.r-project.org/bin/windows/Rtools/
# for Mac OS you need to install Xcode from the Mac App Store
# For Linux: If you are using ubuntu see below, for other versions
# you will need to check google for solutions to getting devtools
# installed to that specific linux.
# UBUNTU Install
# there are some ubuntu dependencies that are not installed by default
# that are needed for devtools, so first in a shell:
# sudo apt install libcurl4-openssl-dev libssl-dev libxml2-dev

# Potential newer source R packages vs. Binary packages
# Depending on the state of your R packages R might prompt
# you with a message offering to install newer versions
# of packages than the current binary versions. This is not
# a necessary step for SPOCK to work assuming you are on 
# R >= 3.6.3.
# Once devtools is ready to install, install the package
# and load the library (commands below)
install.packages("devtools")
library(devtools)

#install the package
install_github("https://github.com/fitzwolf/SPOCK", auth_token = "360acd560f06269f231f63a81ab15d61b33960ba")

# test it out
SPOCK::OGA(create.plot=FALSE)

# this will error without data, you can get additional help for OGA
# arguments including how to specify the directory with your data
# by using ?OGA at the R prompt

# once you have your data in a directory you can run
SPOCK::OGA(homedir='location of data')
# where location of data is the OS path to your data

