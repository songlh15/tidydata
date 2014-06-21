==================================================
##"Getting and Cleaning Data" course project
##created on 2014/06/20 
==================================================

### Overview
This is a Coursera course project for "Getting and Cleaning Data". It requires downloading data, merging,transforming and creating a tidy dataset for further analysis.
 
The raw dataset is Human Activity Recognition Using Smartphones Dataset V1.0 by Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

Data description can be found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones .
and the data can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.


### The whole project includes:

*Readme.md: This readme file.
*cookbook.md: It includes description, rules to create tidydata, description of variables names and data type.
*run_analysis.R: A R script to clean, prepare the tidy data and do basic analysis.
*mean_of_measures.txt: A tidy dataset including subject identifier, activity lable and calculated mean of all measurements by each subject and each activity. It can be read into R by
 read.table(file = "mean_of_measures.txt",sep = ",", header = TRUE, stringsAsFactors = F). 
 
Please note that in the R script, there are two tidy datasets, one is called tidydata, the other is tidysummary, which was saved as mean_of_measures.txt and was uploaded per project request.

### Programming:

Assuming the raw data 'UCI HAR Dataset' is downloaded and the R working directory is set to the directory where downloaded datasets is included within that directory.

#### Step 1.
Read raw data into R by read.table() functions. Since there are three files for each data source(train or test), 
there will be 3 read.table() functions for each source so we got trainx from X_train.txt,trainy from Y_train.txt,trainid from train.txt 
and testx from x_test.txt,testy from y_test.txt and testid from test.txt.

After reading data into R, merge rainx,trainy and trainid into one single dataset called traindata and merge testx,testy and testid to one single dataset testdata use cbind(),
then using rbind() to concatenate two datasets traindata and testdata into one dataset called traintest.

#### Step 2.

Read feasures.txt in using read.table() and get rid of special characters like '()-' to make varialbe names easy 
to handle. Using grep() to find those varialbes with 'mean()' or 'std()', subset and keep only those variables .
adding 'act' and 'subjectid' to traintest dataset.


#### step 3.
Read activity_labels.txt using read.table() into R and merge it by activty identifier with traintest dataset to create tidy dataset called tidydata,reorder variables and change variables name 'act' to 'activity'.

#### step 4.
Summarize each measurements group by subjectid and activity using aggregate() function, and make variable names readable by adding '_' between all
lower case characters.

Detail programming explanation can be seen from the comments line in run_anlaysis.R.

Detail infomration about variable names convention and data dictionary can be found at cookbook.MD.
















