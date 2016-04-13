select <- function(site, variable, start.time, end.time){
    ## Select data from netcdf file hosted on the Princeton Hydrometeorology thredds server

    ## Inputs:
    ## site = one of the monitoring stations in quotes ('broadmead')
    ## variable = one of the variables from this site in quotes ('Rain_1_mm_Tot')
    ## start.time = starting time for data.frame ('YYYY-MM-DD hh:mm:ss')
    ## end.time = ending time for data.frame ('YYYY-MM-DD hh:mm:ss')

    ## Outputs:
    ## data.frame with columns: t and variable
    
    library('ncdf4')
    
    data_url <- paste0('http://hydromet-thredds.princeton.edu:9000/thredds/dodsC/MonitoringStations/',site,'.nc')

    ds <- nc_open(data_url)
    time.data <- ncvar_get(ds, 'time')
    time <- as.POSIXct(time.data, origin='1970-01-01', tz='UTC')

    start <- which(time == start.time)
    count <- which(time == end.time) - start
    var <- ncvar_get(ds, variable, start, count)
    t <- time[start: (start + count - 1)]
    df <- data.frame(t, var)
    colnames(df) <- c('t',variable)

    nc_close(ds)
    return(df)
    }