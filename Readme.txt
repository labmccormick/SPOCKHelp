SPOCK Installation guidelines.

SPOCK can be installed from github through two different methods. The first method relies on the R development packaged, devtools, or you can pull the package from github and use the source code within your own projects. 

1. Installation using R devtools.

This method relies on devtools, for information on how to install devtools please visit the documentation for the project itself at https://www.r-project.org/nosvn/pandoc/devtools.html. SPOCK does not need the developmental devtools so you can follow the instructions for installing it from CRAN. Use just the 1 and 2 options from the website. With devtools installed you can then follow the commands outlined in SPOCK-Intro.R, also found in the supplemental of this paper.

2. Downloading the package from GITHUB.

This package can also be downloaded directly from github at https://github.com/labmccormick/SPOCK. If you go that route you will want to download the full zip file and expand it locally and make a new project in Rstudio with a starting directory at that location. From there you can use the Rstudio build utilities to install and build and load using library(SPOCK) to load the namespace for use.

3. Library loaded.

Once the library is loaded all of the functions become available. Most of them are helper functions to the primary function called OGA. In general you will use OGA and specify the location of your data to generate the results. For example, SPOCK::OGA(homedir="C:/MYDATA/"), that will generate the raw data and perform all of the statistics and create the plots so you can then visualize the results. If you already have the data created and just wanted to reproduce the plots you could also call the helper function directly, SPOCK::create.plots(). For all functions you can also use the builtin R help functionality by typing ?OGA or ?create.plots, etc.

4. Use browseVignettes

Using R's built in browseVignettes tool: browseVignettes("SPOCK") get a detailed step by step of how to run a base analysis with some test data available from github. This will walk through the steps to get doubling times, compute CLS and run statistics to determine any p-values for your experiments.


4. File names for the Experiments

SPOCK looks for files that have the following format to their names. <experiment>_Day_###.csv, where <experiment> can be any alphanumeric name for the experiment, followed by _Day_ (this syntax must be preserved), followed by the Day the measurements where made. Examples: EMSQ1909_Day_2.csv, EMSQ1909_Day_10.csv, EMSQ1909_Day_14.csv, w303a122020_Day_1.csv, w303a122020_Day_9.csv. The software will fail if it doesn't find the files in this general format so please take care in naming your experiment results.

5. Annotation and expected pattern of .csv files from plate reader

SPOCK expects input files to befrom the Bioscreen C. These are .csv files of the following pattern, column 1 TIME of OD reading, columns 2-201 OD readings. Background wells should be annotated BLANK in lieu of the bioscreen naming (Well__),(or blankname="nameofblankwells" e.g. "YPD"), replicates should be named in lieu of their bioscreen column name (well__) with a unique name for each set of replicates(e.g. Well 101-105 are replicate1, rename these columns replicate1), this name must only contain alphanumeric characters.