library(readxl)
library(dplyr)
dat <- read_xlsx("Board_Data.xlsx")
dat.time <- read_xlsx("Time_query_data.xlsx")
dat.time <- dat.time[-28]

# Cleaning the Data
for(i in 3:27){
  dat[i] <- as.numeric(dat[[i]])
}

for(i in 3:27){
  dat.time[i] <- as.numeric(dat.time[[i]])
}

for(i in 33:52){
  dat[i] <- as.numeric(dat[[i]])
}

# Storing the data
library(writexl)
save(dat, file = "Board_Data.Rdata")
save(dat.time, file = "Time_query_data.Rdata")
write_xlsx(dat, "Board_Data.xlsx")
write_xlsx(dat.time, "Time_query_data.xlsx")
