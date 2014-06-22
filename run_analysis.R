#Course Project 

#Check and set working directory

if(getwd() != "C:/Users/song/Dropbox/Coursera/cleaningdata/project")
  setwd("C:/Users/Song/Dropbox/Coursera/cleaningdata/project")
 
#step 1

#read train data
trainx <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainy <- read.table("./UCI HAR Dataset/train/y_train.txt")
trainid <- read.table("./UCI HAR Dataset/train/subject_train.txt")

#combine to make traindata
traindata <- cbind(trainx,trainy,trainid)

#read test data
testx <- read.table("./UCI HAR Dataset/test/X_test.txt")
testy <- read.table("./UCI HAR Dataset/test/y_test.txt")
testid <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#combine to make test data
testdata <- cbind(testx,testy,testid)

#concatenate two datasets into one
traintest <- rbind(traindata,testdata)

#Step 2:  find measurements on the mean and standard deviation

#read features to find corresponding variables
feature <- read.table("./UCI HAR Dataset/features.txt")

#find 'mean()' or 'std()' from those variable lists
features <- feature[(grep("mean()|std()",feature$V2)),]

#exclude those with meanFreq()
exclude <- features[grep('meanFreq()',features$V2),]

library(sqldf)
featureclean <- sqldf("select * from features where V2 not in (select distinct V2 from exclude)")

varlist <- as.vector(featureclean$V1)
varname <- as.vector(featureclean$V2)

#keep only those variablees we are intrested in and two identifiers
traintest <- traintest[,c(varlist,562,563)]

#clean variable name by removing '()' and '-'

varnameclean <- gsub("-|\\(|\\)",'',varname)

# add cleaned varible names back to dataset
as.vector(varnameclean)

names(traintest) <- c(varnameclean,"act","subjectid") 

#Step:3 Uses descriptive activity names to name the activities in the data set
# read activity labels from activity_labels.txt

activitylabel <- read.table("./UCI HAR Dataset/activity_labels.txt")
traintestdata <- merge(traintest,activitylabel,by.x="act",by.y="V1",all=T)

#reoder,rename and clean dataset
fortidy <- traintestdata[,c(68,69,seq(1:67))]
colnames(fortidy)[2] <- "activity"

#remove varialbe act and keepp activity 
longdata <- fortidy[,-3]

#step: 4
#create a tidy dataset by average each varialbe by each subject and each activity
tidysummary <- aggregate(. ~ subjectid + activity, longdata, mean)

#modify varaible names to make it descriptive and easy to follow

summarynames1<- gsub('tBody','average_time_body',names(tidysummary))
summarynames2<- gsub('fBody','average_frequency_body',summarynames1)
summarynames3<- gsub('tGravity','average_time_gravity',summarynames2)
summarynames4<- gsub('Acc','_accelerometer_',summarynames3)
summarynames5<- gsub('Gyro','_gyroscope_',summarynames4)
summarynames6<- gsub('Jerk','_jerk_',summarynames5)
summarynames7<- gsub('Mag','_magnitude_',summarynames6)
summarynames8<- gsub('X','_xaxis',summarynames7)
summarynames9<- gsub('Y','_yaxis',summarynames8)
summarynames10<- gsub('Z','_zaxis',summarynames9)
summarynames11 <- gsub('bodyBody','body',summarynames10) 
summarynames <- gsub('__','_',summarynames11) 

#add descript names into data
colnames(tidysummary) <- summarynames

#step 5

#output tidy data for further analsyis
write.table(tidysummary, file = "mean_of_measures.txt", sep = ",", col.names = colnames(tidysummary))

# tidy data set can be read into R by
# read.table(file = "mean_of_measures.txt",sep = ",", header = TRUE, stringsAsFactors = T) 

#export tidy data to a csv file for easy review
write.table(tidysummary, file = "mean_of_measures.csv", sep = ",", col.names = colnames(tidysummary))

