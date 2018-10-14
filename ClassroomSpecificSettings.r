rm(list=ls())

library(rstudioapi)

my_work_dir = rstudioapi::getActiveDocumentContext()$path


my_work_dir = gsub("\\\\", "/", my_work_dir)

pathParts = strsplit(my_work_dir,'/')[[1]]

my_work_dir = paste(pathParts[1:length(pathParts)-1],sep='', collapse = "/")

setwd(my_work_dir)

libPath = paste(my_work_dir,'/','my_libs', sep="")

if (!file.exists(libPath))
{
  dir.create(libPath, showWarnings = FALSE)
}


dataPath = paste(my_work_dir,'/','Data', sep="")

if (!file.exists(dataPath))
{
  dir.create(dataPath, showWarnings = FALSE)
}

twitterDataPath = paste(my_work_dir,'/','Data','/','Twitter', sep="")

if (!file.exists(twitterDataPath))
{
  dir.create(twitterDataPath, showWarnings = FALSE)
}


stackDataPath = paste(my_work_dir,'/','Data','/','Stack', sep="")

if (!file.exists(stackDataPath))
{
  dir.create(stackDataPath, showWarnings = FALSE)
}


scopusDataPath = paste(my_work_dir,'/','Data','/','Scopus', sep="")

if (!file.exists(scopusDataPath))
{
  dir.create(scopusDataPath, showWarnings = FALSE)
}


if (libPath %in% .libPaths() == FALSE)
{
  .libPaths(c(libPath,.libPaths()))
}

sc_api_key = "5f8efe2dcfaa441f24530b2f09123a55"

so_api_key = "kN*rOg9tz*1FkrJPeQiGwg(("

tw_api_key = ""
my_data_dir = 'data'
getoldtweets_path = paste(my_work_dir,"/GetOldTweets-java-master", sep="")
library("stopwords")
my_stopwords = c(stopwords::stopwords(language = "en", source = "snowball"), "based", "paper", "can")

