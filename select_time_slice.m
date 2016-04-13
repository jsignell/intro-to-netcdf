function df = select(site, variable, startTime, endTime)
data_url = strcat('http://hydromet-thredds.princeton.edu:9000/thredds/dodsC/MonitoringStations/',site,'.nc');
timeData = ncread(data_url, 'time');
time = datetime( timeData, 'ConvertFrom', 'posixtime' );
start = find(time==startTime);
count = find(time==endTime)-start;
var = ncread(data_url,variable, start, count, 1);
t = time(start:start+count-1);
df = table(t, var);
df.Properties.VariableNames = {'t' variable};
end