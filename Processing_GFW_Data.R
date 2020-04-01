###Code for processing the AIS data to show presence/absence for each geartype for each location in the NWS
#need to figure out how to loop this. So far it is separated by month and I just manually change the year with "Find and Replace"

#-----------------------JAN-------------------------#

#inputting AIS data 
#retreive all the csvs and import them into one large dataframe
setwd("E:/VDMs/fishing_effort/fishing_effort/daily_csvs")
filepath <- "E:/VDMs/fishing_effort/fishing_effort/daily_csvs"
filenames <- list.files(path = filepath, pattern = "2012-01") #Specifying that I only want files for xxx_2016
filenames #making sure they are correct
Jan_2012 <- do.call(rbind,lapply(filenames,read.csv)) #this code will read all the files I specified and import them into 1 dataframe


# Transform data across all fleets and geartypes
Jan_2012 <- Jan_2012 %>% 
  mutate(
    # convert from hundreths of a degree to degrees
    lat_bin = lat_bin / 100, 
    lon_bin = lon_bin / 100) %>% 
  filter(lat_bin <= 46 & lat_bin >= 23 , lon_bin >= -100 & lon_bin <= -60) %>% #making the extent to be of the Northwest Atlantic (NWA) and just longlines 
  group_by(date,lon_bin,lat_bin,geartype) %>% #identifying presence-absence 
  summarize(n=n())%>%
  ungroup() %>%
  spread(geartype, n, fill=0) %>% 
  mutate(drifting_longlines = ifelse(drifting_longlines >= 1, 1, drifting_longlines),
         fixed_gear = ifelse(fixed_gear >= 1, 1, fixed_gear),
         other_fishing = ifelse(other_fishing >= 1, 1, other_fishing),
         purse_seines = ifelse(purse_seines >= 1, 1, purse_seines),
         #squid_jigger = ifelse(squid_jigger >= 1, 1, squid_jigger),
         trawlers = ifelse(trawlers >= 1, 1, trawlers)) #making the extent to be of the Northwest Atlantic (NWA) and just longlines 


#export as a csv
write.csv(Jan_2012,"E:/VDMs/fishing_effort/fishing_effort/Monthly_NWA_longline_csvs/Jan_2012.csv", row.names = TRUE)

#erase dataframe to save memory
rm(Jan_2012)


#-----------------------Feb-------------------------#

#inputting AIS data 
#retreive all the csvs and import them into one large dataframe
setwd("E:/VDMs/fishing_effort/fishing_effort/daily_csvs")
filepath <- "E:/VDMs/fishing_effort/fishing_effort/daily_csvs"
filenames <- list.files(path = filepath, pattern = "2012-01") #Specifying that I only want files for xxx_2016
filenames #making sure they are correct
Feb_2012 <- do.call(rbind,lapply(filenames,read.csv)) #this code will read all the files I specified and import them into 1 dataframe


# Transform data across all fleets and geartypes
Feb_2012 <- Feb_2012 %>% 
  mutate(
    # convert from hundreths of a degree to degrees
    lat_bin = lat_bin / 100, 
    lon_bin = lon_bin / 100) %>% 
  filter(lat_bin <= 46 & lat_bin >= 23 , lon_bin >= -100 & lon_bin <= -60) %>% #making the extent to be of the Northwest Atlantic (NWA) and just longlines 
  group_by(date,lon_bin,lat_bin,geartype) %>% #identifying presence-absence 
  summarize(n=n())%>%
  ungroup() %>%
  spread(geartype, n, fill=0) %>% 
  mutate(drifting_longlines = ifelse(drifting_longlines >= 1, 1, drifting_longlines),
         fixed_gear = ifelse(fixed_gear >= 1, 1, fixed_gear),
         other_fishing = ifelse(other_fishing >= 1, 1, other_fishing),
         purse_seines = ifelse(purse_seines >= 1, 1, purse_seines),
         #squid_jigger = ifelse(squid_jigger >= 1, 1, squid_jigger),
         trawlers = ifelse(trawlers >= 1, 1, trawlers)) #making the extent to be of the Northwest Atlantic (NWA) and just longlines 


#export as a csv
write.csv(Feb_2012,"E:/VDMs/fishing_effort/fishing_effort/Monthly_NWA_longline_csvs/Feb_2012.csv", row.names = TRUE)

#erase dataframe to save memory
rm(Feb_2012)


#-----------------------Mar-------------------------#

#inputting AIS data 
#retreive all the csvs and import them into one large dataframe
setwd("E:/VDMs/fishing_effort/fishing_effort/daily_csvs")
filepath <- "E:/VDMs/fishing_effort/fishing_effort/daily_csvs"
filenames <- list.files(path = filepath, pattern = "2012-01") #Specifying that I only want files for xxx_2016
filenames #making sure they are correct
Mar_2012 <- do.call(rbind,lapply(filenames,read.csv)) #this code will read all the files I specified and import them into 1 dataframe


# Transform data across all fleets and geartypes
Mar_2012 <- Mar_2012 %>% 
  mutate(
    # convert from hundreths of a degree to degrees
    lat_bin = lat_bin / 100, 
    lon_bin = lon_bin / 100) %>% 
  filter(lat_bin <= 46 & lat_bin >= 23 , lon_bin >= -100 & lon_bin <= -60) %>% #making the extent to be of the Northwest Atlantic (NWA) and just longlines 
  group_by(date,lon_bin,lat_bin,geartype) %>% #identifying presence-absence 
  summarize(n=n())%>%
  ungroup() %>%
  spread(geartype, n, fill=0) %>% 
  mutate(drifting_longlines = ifelse(drifting_longlines >= 1, 1, drifting_longlines),
         fixed_gear = ifelse(fixed_gear >= 1, 1, fixed_gear),
         other_fishing = ifelse(other_fishing >= 1, 1, other_fishing),
         purse_seines = ifelse(purse_seines >= 1, 1, purse_seines),
         #squid_jigger = ifelse(squid_jigger >= 1, 1, squid_jigger),
         trawlers = ifelse(trawlers >= 1, 1, trawlers)) #making the extent to be of the Northwest Atlantic (NWA) and just longlines 


#export as a csv
write.csv(Mar_2012,"E:/VDMs/fishing_effort/fishing_effort/Monthly_NWA_longline_csvs/Mar_2012.csv", row.names = TRUE)

#erase dataframe to save memory
rm(Mar_2012)


#-----------------------Apr-------------------------#

#inputting AIS data 
#retreive all the csvs and import them into one large dataframe
setwd("E:/VDMs/fishing_effort/fishing_effort/daily_csvs")
filepath <- "E:/VDMs/fishing_effort/fishing_effort/daily_csvs"
filenames <- list.files(path = filepath, pattern = "2012-01") #Specifying that I only want files for xxx_2016
filenames #making sure they are correct
Apr_2012 <- do.call(rbind,lapply(filenames,read.csv)) #this code will read all the files I specified and import them into 1 dataframe


# Transform data across all fleets and geartypes
Apr_2012 <- Apr_2012 %>% 
  mutate(
    # convert from hundreths of a degree to degrees
    lat_bin = lat_bin / 100, 
    lon_bin = lon_bin / 100) %>% 
  filter(lat_bin <= 46 & lat_bin >= 23 , lon_bin >= -100 & lon_bin <= -60) %>% #making the extent to be of the Northwest Atlantic (NWA) and just longlines 
  group_by(date,lon_bin,lat_bin,geartype) %>% #identifying presence-absence 
  summarize(n=n())%>%
  ungroup() %>%
  spread(geartype, n, fill=0) %>% 
  mutate(drifting_longlines = ifelse(drifting_longlines >= 1, 1, drifting_longlines),
         fixed_gear = ifelse(fixed_gear >= 1, 1, fixed_gear),
         other_fishing = ifelse(other_fishing >= 1, 1, other_fishing),
         purse_seines = ifelse(purse_seines >= 1, 1, purse_seines),
         #squid_jigger = ifelse(squid_jigger >= 1, 1, squid_jigger),
         trawlers = ifelse(trawlers >= 1, 1, trawlers)) #making the extent to be of the Northwest Atlantic (NWA) and just longlines 


#export as a csv
write.csv(Apr_2012,"E:/VDMs/fishing_effort/fishing_effort/Monthly_NWA_longline_csvs/Apr_2012.csv", row.names = TRUE)

#erase dataframe to save memory
rm(Apr_2012)


#-----------------------May-------------------------#

#inputting AIS data 
#retreive all the csvs and import them into one large dataframe
setwd("E:/VDMs/fishing_effort/fishing_effort/daily_csvs")
filepath <- "E:/VDMs/fishing_effort/fishing_effort/daily_csvs"
filenames <- list.files(path = filepath, pattern = "2012-01") #Specifying that I only want files for xxx_2016
filenames #making sure they are correct
May_2012 <- do.call(rbind,lapply(filenames,read.csv)) #this code will read all the files I specified and import them into 1 dataframe


# Transform data across all fleets and geartypes
May_2012 <- May_2012 %>% 
  mutate(
    # convert from hundreths of a degree to degrees
    lat_bin = lat_bin / 100, 
    lon_bin = lon_bin / 100) %>% 
  filter(lat_bin <= 46 & lat_bin >= 23 , lon_bin >= -100 & lon_bin <= -60) %>% #making the extent to be of the Northwest Atlantic (NWA) and just longlines 
  group_by(date,lon_bin,lat_bin,geartype) %>% #identifying presence-absence 
  summarize(n=n())%>%
  ungroup() %>%
  spread(geartype, n, fill=0) %>% 
  mutate(drifting_longlines = ifelse(drifting_longlines >= 1, 1, drifting_longlines),
         fixed_gear = ifelse(fixed_gear >= 1, 1, fixed_gear),
         other_fishing = ifelse(other_fishing >= 1, 1, other_fishing),
         purse_seines = ifelse(purse_seines >= 1, 1, purse_seines),
         #squid_jigger = ifelse(squid_jigger >= 1, 1, squid_jigger),
         trawlers = ifelse(trawlers >= 1, 1, trawlers)) #making the extent to be of the Northwest Atlantic (NWA) and just longlines 


#export as a csv
write.csv(May_2012,"E:/VDMs/fishing_effort/fishing_effort/Monthly_NWA_longline_csvs/May_2012.csv", row.names = TRUE)

#erase dataframe to save memory
rm(May_2012)


#-----------------------Jun-------------------------#

#inputting AIS data 
#retreive all the csvs and import them into one large dataframe
setwd("E:/VDMs/fishing_effort/fishing_effort/daily_csvs")
filepath <- "E:/VDMs/fishing_effort/fishing_effort/daily_csvs"
filenames <- list.files(path = filepath, pattern = "2012-01") #Specifying that I only want files for xxx_2016
filenames #making sure they are correct
Jun_2012 <- do.call(rbind,lapply(filenames,read.csv)) #this code will read all the files I specified and import them into 1 dataframe


# Transform data across all fleets and geartypes
Jun_2012 <- Jun_2012 %>% 
  mutate(
    # convert from hundreths of a degree to degrees
    lat_bin = lat_bin / 100, 
    lon_bin = lon_bin / 100) %>% 
  filter(lat_bin <= 46 & lat_bin >= 23 , lon_bin >= -100 & lon_bin <= -60) %>% #making the extent to be of the Northwest Atlantic (NWA) and just longlines 
  group_by(date,lon_bin,lat_bin,geartype) %>% #identifying presence-absence 
  summarize(n=n())%>%
  ungroup() %>%
  spread(geartype, n, fill=0) %>% 
  mutate(drifting_longlines = ifelse(drifting_longlines >= 1, 1, drifting_longlines),
         fixed_gear = ifelse(fixed_gear >= 1, 1, fixed_gear),
         other_fishing = ifelse(other_fishing >= 1, 1, other_fishing),
         purse_seines = ifelse(purse_seines >= 1, 1, purse_seines),
         #squid_jigger = ifelse(squid_jigger >= 1, 1, squid_jigger),
         trawlers = ifelse(trawlers >= 1, 1, trawlers)) #making the extent to be of the Northwest Atlantic (NWA) and just longlines 


#export as a csv
write.csv(Jun_2012,"E:/VDMs/fishing_effort/fishing_effort/Monthly_NWA_longline_csvs/Jun_2012.csv", row.names = TRUE)

#erase dataframe to save memory
rm(Jun_2012)



#-----------------------Jul-------------------------#

#inputting AIS data 
#retreive all the csvs and import them into one large dataframe
setwd("E:/VDMs/fishing_effort/fishing_effort/daily_csvs")
filepath <- "E:/VDMs/fishing_effort/fishing_effort/daily_csvs"
filenames <- list.files(path = filepath, pattern = "2012-01") #Specifying that I only want files for xxx_2016
filenames #making sure they are correct
Jul_2012 <- do.call(rbind,lapply(filenames,read.csv)) #this code will read all the files I specified and import them into 1 dataframe


# Transform data across all fleets and geartypes
Jul_2012 <- Jul_2012 %>% 
  mutate(
    # convert from hundreths of a degree to degrees
    lat_bin = lat_bin / 100, 
    lon_bin = lon_bin / 100) %>% 
  filter(lat_bin <= 46 & lat_bin >= 23 , lon_bin >= -100 & lon_bin <= -60) %>% #making the extent to be of the Northwest Atlantic (NWA) and just longlines 
  group_by(date,lon_bin,lat_bin,geartype) %>% #identifying presence-absence 
  summarize(n=n())%>%
  ungroup() %>%
  spread(geartype, n, fill=0) %>% 
  mutate(drifting_longlines = ifelse(drifting_longlines >= 1, 1, drifting_longlines),
         fixed_gear = ifelse(fixed_gear >= 1, 1, fixed_gear),
         other_fishing = ifelse(other_fishing >= 1, 1, other_fishing),
         purse_seines = ifelse(purse_seines >= 1, 1, purse_seines),
         #squid_jigger = ifelse(squid_jigger >= 1, 1, squid_jigger),
         trawlers = ifelse(trawlers >= 1, 1, trawlers)) #making the extent to be of the Northwest Atlantic (NWA) and just longlines 


#export as a csv
write.csv(Jul_2012,"E:/VDMs/fishing_effort/fishing_effort/Monthly_NWA_longline_csvs/Jul_2012.csv", row.names = TRUE)

#erase dataframe to save memory
rm(Jul_2012)


#-----------------------Aug-------------------------#

#inputting AIS data 
#retreive all the csvs and import them into one large dataframe
setwd("E:/VDMs/fishing_effort/fishing_effort/daily_csvs")
filepath <- "E:/VDMs/fishing_effort/fishing_effort/daily_csvs"
filenames <- list.files(path = filepath, pattern = "2012-01") #Specifying that I only want files for xxx_2016
filenames #making sure they are correct
Aug_2012 <- do.call(rbind,lapply(filenames,read.csv)) #this code will read all the files I specified and import them into 1 dataframe


# Transform data across all fleets and geartypes
Aug_2012 <- Aug_2012 %>% 
  mutate(
    # convert from hundreths of a degree to degrees
    lat_bin = lat_bin / 100, 
    lon_bin = lon_bin / 100) %>% 
  filter(lat_bin <= 46 & lat_bin >= 23 , lon_bin >= -100 & lon_bin <= -60) %>% #making the extent to be of the Northwest Atlantic (NWA) and just longlines 
  group_by(date,lon_bin,lat_bin,geartype) %>% #identifying presence-absence 
  summarize(n=n())%>%
  ungroup() %>%
  spread(geartype, n, fill=0) %>% 
  mutate(drifting_longlines = ifelse(drifting_longlines >= 1, 1, drifting_longlines),
         fixed_gear = ifelse(fixed_gear >= 1, 1, fixed_gear),
         other_fishing = ifelse(other_fishing >= 1, 1, other_fishing),
         purse_seines = ifelse(purse_seines >= 1, 1, purse_seines),
         #squid_jigger = ifelse(squid_jigger >= 1, 1, squid_jigger),
         trawlers = ifelse(trawlers >= 1, 1, trawlers)) #making the extent to be of the Northwest Atlantic (NWA) and just longlines 


#export as a csv
write.csv(Aug_2012,"E:/VDMs/fishing_effort/fishing_effort/Monthly_NWA_longline_csvs/Aug_2012.csv", row.names = TRUE)

#erase dataframe to save memory
rm(Aug_2012)


#-----------------------Sep-------------------------#

#inputting AIS data 
#retreive all the csvs and import them into one large dataframe
setwd("E:/VDMs/fishing_effort/fishing_effort/daily_csvs")
filepath <- "E:/VDMs/fishing_effort/fishing_effort/daily_csvs"
filenames <- list.files(path = filepath, pattern = "2012-01") #Specifying that I only want files for xxx_2016
filenames #making sure they are correct
Sep_2012 <- do.call(rbind,lapply(filenames,read.csv)) #this code will read all the files I specified and import them into 1 dataframe


# Transform data across all fleets and geartypes
Sep_2012 <- Sep_2012 %>% 
  mutate(
    # convert from hundreths of a degree to degrees
    lat_bin = lat_bin / 100, 
    lon_bin = lon_bin / 100) %>% 
  filter(lat_bin <= 46 & lat_bin >= 23 , lon_bin >= -100 & lon_bin <= -60) %>% #making the extent to be of the Northwest Atlantic (NWA) and just longlines 
  group_by(date,lon_bin,lat_bin,geartype) %>% #identifying presence-absence 
  summarize(n=n())%>%
  ungroup() %>%
  spread(geartype, n, fill=0) %>% 
  mutate(drifting_longlines = ifelse(drifting_longlines >= 1, 1, drifting_longlines),
         fixed_gear = ifelse(fixed_gear >= 1, 1, fixed_gear),
         other_fishing = ifelse(other_fishing >= 1, 1, other_fishing),
         purse_seines = ifelse(purse_seines >= 1, 1, purse_seines),
         #squid_jigger = ifelse(squid_jigger >= 1, 1, squid_jigger),
         trawlers = ifelse(trawlers >= 1, 1, trawlers)) #making the extent to be of the Northwest Atlantic (NWA) and just longlines 


#export as a csv
write.csv(Sep_2012,"E:/VDMs/fishing_effort/fishing_effort/Monthly_NWA_longline_csvs/Sep_2012.csv", row.names = TRUE)

#erase dataframe to save memory
rm(Sep_2012)


#-----------------------Oct-------------------------#

#inputting AIS data 
#retreive all the csvs and import them into one large dataframe
setwd("E:/VDMs/fishing_effort/fishing_effort/daily_csvs")
filepath <- "E:/VDMs/fishing_effort/fishing_effort/daily_csvs"
filenames <- list.files(path = filepath, pattern = "2012-01") #Specifying that I only want files for xxx_2016
filenames #making sure they are correct
Oct_2012 <- do.call(rbind,lapply(filenames,read.csv)) #this code will read all the files I specified and import them into 1 dataframe


# Transform data across all fleets and geartypes
Oct_2012 <- Oct_2012 %>% 
  mutate(
    # convert from hundreths of a degree to degrees
    lat_bin = lat_bin / 100, 
    lon_bin = lon_bin / 100) %>% 
  filter(lat_bin <= 46 & lat_bin >= 23 , lon_bin >= -100 & lon_bin <= -60) %>% #making the extent to be of the Northwest Atlantic (NWA) and just longlines 
  group_by(date,lon_bin,lat_bin,geartype) %>% #identifying presence-absence 
  summarize(n=n())%>%
  ungroup() %>%
  spread(geartype, n, fill=0) %>% 
  mutate(drifting_longlines = ifelse(drifting_longlines >= 1, 1, drifting_longlines),
         fixed_gear = ifelse(fixed_gear >= 1, 1, fixed_gear),
         other_fishing = ifelse(other_fishing >= 1, 1, other_fishing),
         purse_seines = ifelse(purse_seines >= 1, 1, purse_seines),
         #squid_jigger = ifelse(squid_jigger >= 1, 1, squid_jigger),
         trawlers = ifelse(trawlers >= 1, 1, trawlers)) #making the extent to be of the Northwest Atlantic (NWA) and just longlines 


#export as a csv
write.csv(Oct_2012,"E:/VDMs/fishing_effort/fishing_effort/Monthly_NWA_longline_csvs/Oct_2012.csv", row.names = TRUE)

#erase dataframe to save memory
rm(Oct_2012)


#-----------------------Nov-------------------------#

#inputting AIS data 
#retreive all the csvs and import them into one large dataframe
setwd("E:/VDMs/fishing_effort/fishing_effort/daily_csvs")
filepath <- "E:/VDMs/fishing_effort/fishing_effort/daily_csvs"
filenames <- list.files(path = filepath, pattern = "2012-01") #Specifying that I only want files for xxx_2016
filenames #making sure they are correct
Nov_2012 <- do.call(rbind,lapply(filenames,read.csv)) #this code will read all the files I specified and import them into 1 dataframe


# Transform data across all fleets and geartypes
Nov_2012 <- Nov_2012 %>% 
  mutate(
    # convert from hundreths of a degree to degrees
    lat_bin = lat_bin / 100, 
    lon_bin = lon_bin / 100) %>% 
  filter(lat_bin <= 46 & lat_bin >= 23 , lon_bin >= -100 & lon_bin <= -60) %>% #making the extent to be of the Northwest Atlantic (NWA) and just longlines 
  group_by(date,lon_bin,lat_bin,geartype) %>% #identifying presence-absence 
  summarize(n=n())%>%
  ungroup() %>%
  spread(geartype, n, fill=0) %>% 
  mutate(drifting_longlines = ifelse(drifting_longlines >= 1, 1, drifting_longlines),
         fixed_gear = ifelse(fixed_gear >= 1, 1, fixed_gear),
         other_fishing = ifelse(other_fishing >= 1, 1, other_fishing),
         purse_seines = ifelse(purse_seines >= 1, 1, purse_seines),
         #squid_jigger = ifelse(squid_jigger >= 1, 1, squid_jigger),
         trawlers = ifelse(trawlers >= 1, 1, trawlers)) #making the extent to be of the Northwest Atlantic (NWA) and just longlines 


#export as a csv
write.csv(Nov_2012,"E:/VDMs/fishing_effort/fishing_effort/Monthly_NWA_longline_csvs/Nov_2012.csv", row.names = TRUE)

#erase dataframe to save memory
rm(Nov_2012)


#-----------------------Dec-------------------------#

#inputting AIS data 
#retreive all the csvs and import them into one large dataframe
setwd("E:/VDMs/fishing_effort/fishing_effort/daily_csvs")
filepath <- "E:/VDMs/fishing_effort/fishing_effort/daily_csvs"
filenames <- list.files(path = filepath, pattern = "2012-01") #Specifying that I only want files for xxx_2016
filenames #making sure they are correct
Dec_2012 <- do.call(rbind,lapply(filenames,read.csv)) #this code will read all the files I specified and import them into 1 dataframe


# Transform data across all fleets and geartypes
Dec_2012 <- Dec_2012 %>% 
  mutate(
    # convert from hundreths of a degree to degrees
    lat_bin = lat_bin / 100, 
    lon_bin = lon_bin / 100) %>% 
  filter(lat_bin <= 46 & lat_bin >= 23 , lon_bin >= -100 & lon_bin <= -60) %>% #making the extent to be of the Northwest Atlantic (NWA) and just longlines 
  group_by(date,lon_bin,lat_bin,geartype) %>% #identifying presence-absence 
  summarize(n=n())%>%
  ungroup() %>%
  spread(geartype, n, fill=0) %>% 
  mutate(drifting_longlines = ifelse(drifting_longlines >= 1, 1, drifting_longlines),
         fixed_gear = ifelse(fixed_gear >= 1, 1, fixed_gear),
         other_fishing = ifelse(other_fishing >= 1, 1, other_fishing),
         purse_seines = ifelse(purse_seines >= 1, 1, purse_seines),
         #squid_jigger = ifelse(squid_jigger >= 1, 1, squid_jigger),
         trawlers = ifelse(trawlers >= 1, 1, trawlers)) #making the extent to be of the Northwest Atlantic (NWA) and just longlines 


#export as a csv
write.csv(Dec_2012,"E:/VDMs/fishing_effort/fishing_effort/Monthly_NWA_longline_csvs/Dec_2012.csv", row.names = TRUE)

#erase dataframe to save memory
rm(Dec_2012)