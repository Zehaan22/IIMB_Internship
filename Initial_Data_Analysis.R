load("Board_Data.Rdata")
load("Time_query_data.Rdata")

library(dplyr)

# Loading the data that has no NA values for 2023 compensation
dat.time.2023 <- dat.time%>%
  filter(!is.na(`Total Compensation Paid to CEO 2023`))



## Companies that have same compensation for all 5 years
common.dat <- dat.time.2023%>%
  filter(`Total Compensation Paid to CEO 2023` == `Total Compensation Paid to CEO 2022`)

common.dat <- common.dat%>%
  filter(`Total Compensation Paid to CEO 2022` == `Total Compensation Paid to CEO 2021`)

common.dat <- common.dat%>%
  filter(`Total Compensation Paid to CEO 2021` == `Total Compensation Paid to CEO 2020`)

common.dat <- common.dat%>%
  filter(`Total Compensation Paid to CEO 2020` == `Total Compensation Paid to CEO 2019`)


## Unique compensation values
length(unique(dat.time.2023$`Total Compensation Paid to CEO 2023`))
