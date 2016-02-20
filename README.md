# intro-to-netcdf

If you have never encountered a NetCDF file before, they can seem daunting. If you want a quick and friendly way of looking at the data you should try out [Panoply](http://www.giss.nasa.gov/tools/panoply/). 

If you are ready to dive in and get started with analysis, then choose your language, get set up, and check out the introductory materials. 

## Python

There are several packages that you will want to have install before you start anaylsis with python. If you are already confortable with python, then install **`xarray`**.

If you aren't comfortable already, then the easiest way is to get [miniconda](http://conda.pydata.org/miniconda). I recommend Python2.7. Then go to the command line and run:
    $ conda install xarray matplotlib pandas

## R

Like for python, there is one package that you will need, and several others that will make analysis easier. If you are comfortable with R, then install **`ncdf4`**. To make time management easier install **`xts`**, and to make plotting easier install **`ggplot2`**. 

If you don't yet have R, I recommend getting the free version of RStudio and use the package manager to install **`ncdf4`**,  **`xts`**, and **`ggplot2`**. Or from the command line run: 

    $ install.packages('ncdf4')
    $ install.packages('xts')
    $ install.packages('ggplot2')

## Matlab

Unlike the other two languages, matlab requires a license. If you already have Matlab you are all set to move forward into 
