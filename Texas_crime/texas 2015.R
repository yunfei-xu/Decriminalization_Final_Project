# Count Theft Category
library(readr)
library(plyr)
# 2012 Crime data
Crime_2012 <- read_csv("Desktop/texas/Crime_Reports_2012.csv")
category2012 <- count(grep('THEFT', Crime_2012$`Highest Offense Description`, value=TRUE))
theft_count2012 <- sum(category2012$freq)
rowcount2012 <- nrow(Crime_2012)
percent2012 <- theft_count2012/rowcount2012

# 2013 Crime data
Crime_2013 <- read_csv("Desktop/texas/Crime_Reports_2013.csv")
category2013 <- count(grep('THEFT', Crime_2013$`Highest Offense Description`, value=TRUE))
theft_count2013 <- sum(category2013$freq)
rowcount2013 <- nrow(Crime_2013)
percent2013 <- theft_count2013/rowcount2013

# 2014 Crime data
Crime_2014 <- read_csv("Desktop/texas/Crime_Reports_2014.csv")
category2014 <- count(grep('THEFT', Crime_2014$`Highest Offense Description`, value=TRUE))
theft_count2014 <- sum(category2014$freq)
rowcount2014 <- nrow(Crime_2014)
percent2014 <- theft_count2014/rowcount2014

# 2015 Crime data
Crime_2015 <- read_csv("Desktop/texas/Crime_Reports_2015.csv")
category2015 <- count(grep('THEFT', Crime_2015$`Highest Offense Description`, value=TRUE))
theft_count2015 <- sum(category2015$freq)
rowcount2015 <- nrow(Crime_2015)
percent2015 <- theft_count2015/rowcount2015

# 2016 Crime data
Crime_2016 <- read_csv("Desktop/texas/Crime_Reports_2016.csv")
category2016 <- count(grep('THEFT', Crime_2016$`Highest Offense Description`, value=TRUE))
theft_count2016 <- sum(category2016$freq)
rowcount2016 <- nrow(Crime_2016)
percent2016 <- theft_count2016/rowcount2016

# 2017 Crime data
Crime_2017 <- read_csv("Desktop/texas/Crime_Reports_2017.csv")
category2017 <- count(grep('THEFT', Crime_2017$`Highest Offense Description`, value=TRUE))
theft_count2017 <- sum(category2017$freq)
rowcount2017 <- nrow(Crime_2017)
percent2017 <- theft_count2017/rowcount2017

# 2018 Crime data
Crime_2018 <- read_csv("Desktop/texas/Crime_Reports_2018.csv")
category2018 <- count(grep('THEFT', Crime_2018$`Highest Offense Description`, value=TRUE))
theft_count2018 <- sum(category2018$freq)
rowcount2018 <- nrow(Crime_2018)
percent2018 <- theft_count2018/rowcount2018

# Use ggplot to create barchart
library(ggplot2)
library(ggthemes)
library(RColorBrewer)
dev.off()
data<-data.frame(Year = c("2012", "2013", "2014", "2015", "2016", "2017", "2018"), 
                 Theft_Percentage= c(percent2012, percent2013, percent2014, percent2015, percent2016, percent2017, percent2018))
ggplot(data, aes(x=Year, y=Theft_Percentage))+ 
  geom_bar(stat="identity", position="dodge", fill = brewer.pal(7, "Set1")[2], width = 0.7)+
  ggtitle("Theft Crime Percentage")+
  theme_economist(base_size=10)+
  scale_fill_economist()+
  theme(axis.ticks.length=unit(0.7,'cm'))+
  theme(plot.title = element_text(hjust = 0.45, size = 20, face = "bold"))+
  theme(axis.text=element_text(size=12, vjust = 1),
        axis.title=element_text(size=14,face = "bold", vjust = 0))


data2<-data.frame(Year = c("2012", "2013", "2014", "2015", "2016", "2017", "2018"), 
                 Total_Crime= c(rowcount2012, rowcount2013, rowcount2014, rowcount2015, rowcount2016, rowcount2017, rowcount2018))

ggplot(data2, aes(x=Year, y=Total_Crime))+ 
  geom_bar(stat="identity", position="dodge", fill = brewer.pal(7, "Set1")[2], width = 0.7)+
  ggtitle("Total Crime")+
  theme_economist(base_size=10)+
  scale_fill_economist()+
  theme(axis.ticks.length=unit(0.7,'cm'))+
  theme(plot.title = element_text(hjust = 0.45, size = 20, face = "bold"))+
  theme(axis.text=element_text(size=12, vjust = 1),
        axis.title=element_text(size=14,face = "bold", vjust = 0))

data3<-data.frame(Year = c("2012", "2013", "2014", "2015", "2016", "2017", "2018"), 
                  Total_Theft= c(theft_count2012, theft_count2013, theft_count2014, theft_count2015, theft_count2016, theft_count2017, theft_count2018))
ggplot(data3, aes(x=Year, y=Total_Theft))+ 
  geom_bar(stat="identity", position="dodge", fill = brewer.pal(7, "Set1")[2], width = 0.7)+
  ggtitle("Total Theft")+
  theme_economist(base_size=10)+
  scale_fill_economist()+
  theme(axis.ticks.length=unit(0.7,'cm'))+
  theme(plot.title = element_text(hjust = 0.45, size = 20, face = "bold"))+
  theme(axis.text=element_text(size=12, vjust = 1),
        axis.title=element_text(size=14,face = "bold", vjust = 0))

