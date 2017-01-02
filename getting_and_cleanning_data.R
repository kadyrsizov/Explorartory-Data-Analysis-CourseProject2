setwd("C:/Users/Dana/Desktop/Projects/coursera/Exploratory Data Analysis/project 2")
# make sure the sources data folder exists
if (!file.exists('source data')) {
  dir.create('source data')
}


# Download file, if it does not exist
archiveFile <- "source data/NEI_data.zip"

if(!file.exists(archiveFile)) {
  file.url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
  download.file(file.url,destfile=archiveFile)
  unzip(archiveFile,exdir='source data',overwrite=TRUE)

}

if(!(file.exists("summarySCC_PM25.rds") & file.exists("Source_Classification_Code.rds")))
{ 
  unzip(archiveFile) 
}

