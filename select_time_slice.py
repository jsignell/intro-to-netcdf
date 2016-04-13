def select(site, var, start, end):
    """
    Select data from netcdf file hosted on the Princeton Hydrometeorology thredds server

    Parameters
    -----------
    site: one of the monitoring stations in quotes ('broadmead')
    var: one of the variables from this site in quotes ('Rain_1_mm_Tot'), 
         or a list of variables(['Hc', 'Hs'])
    start: starting time for data.frame ('YYYY-MM-DD hh:mm:ss')
    end: ending time for data.frame ('YYYY-MM-DD hh:mm:ss')

    Returns
    -------
    df: pandas.DataFrame object with time index and the variable(s) as the column(s)
    """    
    import xarray as xr

    data_url = 'http://hydromet-thredds.princeton.edu:9000/thredds/dodsC/MonitoringStations/'+ site+'.nc'
    ds = xr.open_dataset(data_url)
    _ds = ds[var].sel(time=slice(start, end))
    df = _ds.to_dataframe().drop(['lat','lon','station_name'], axis=1)
    ds.close()
    
    return df