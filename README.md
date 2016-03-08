# intro-to-netcdf

If you have never encountered a NetCDF file before, they can seem daunting. If you want a quick and friendly way of looking at the data you should try out [Panoply](http://www.giss.nasa.gov/tools/panoply/). Or see if the files that you are interested in are already hosted on some browser viewing tool such as [ERDDAP]("http://hydromet-thredds.princeton.edu:8000/erddap/info/index.html?page=1&itemsPerPage=1000")

If you are ready to dive in and get started with analysis, then choose your language, get set up, and check out the introductory materials. 

## Python

There are several packages that you will want to install before you start anaylsis with python. If you are already confortable with python, then install [netCDF4](http://unidata.github.io/netcdf4-python/)and [xarray](http://xarray.pydata.org), both are availble on conda. If you don't alreay have them installed, you will also want to install [matplotlib](http://matplotlib.org) for graphing, and [pandas](http://pandas.pydata.org) for data analysis. 

If you aren't comfortable already, then the easiest way is to get [miniconda](http://conda.pydata.org/miniconda). I recommend Python 2.7, but Python 3 works too. Then go to the command line and run:

    $ conda install netCDF4 xarray matplotlib pandas

If you want an environment to work in, try [jupyter](http://jupyter.org), this it the tool that I used to generate the examples in this repository. Just run:

    $ conda install jupyter

## R

As for python, there is one package that you will need, and several others that will make analysis easier. If you are comfortable with R, then install [ncdf4](https://cran.r-project.org/web/packages/ncdf4). To make time management easier install [xts](https://cran.r-project.org/web/packages/xts), and to make plotting easier install [ggplot2](https://cran.r-project.org/web/packages/ggplot2). 

If you don't yet have [R](https://cran.r-project.org/), download it and follow the install instructions.

If you want to work from the command line run: 

    $ install.packages('ncdf4')
    $ install.packages('xts')
    $ install.packages('ggplot2')

If you want a more user-friendly environment, try the free version of [RStudio](https://www.rstudio.com/products/rstudio/download/) and use the package manager to install **ncdf4**,  **xts**, and **ggplot2**. 

## Matlab

Unlike the other two languages, matlab requires a license. If you already have Matlab you are all set to move forward. 
