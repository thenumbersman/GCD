---
title: "README"
author: "thenumbersman"
date: "Saturday, January 17, 2015"
output: html_document
---

### Begin README File

Course Project Script

This README File explains the inter-workings of the R-Script "run_anaylsis.R" written in R-3.10 (64-bit) in fulfillment of the Getting and Cleaning Data Course Project Requirements outlined below.     
Please note that all the listed requirements were fulfilled but not necessary in the specific     
order indicated. Therefore the completion of each requirement **(Req)** is highlighted within the code.     

     1. Merges the training and test data sets to create one data set     
     2. Extracts only the measurements on the mean and standard deviation for each measurement     
     3. Uses descriptive activity names to name the activities in the data set     
     4. Appropriately labels the data set with descriptive variable names
     5. Creates a second, independent tidy data set with the average of each variable for each activity and each  subject
     
The run_analysis.R script consists of three major parts: Input, Process, Output.

**Input** - Requirement 1, merging of the training and testing data sets, is fulfilled. The rbind and cbind functions, not the merge function, were used to combined the data sets.  Also, note that Requirement 4, labeling the variables with descriptive names, is fulfilled as well. This facilitated the fulfillment of Requirement 2, extracting only the measurements of the mean and standard deviation for each measurement.

**Process** - To avoid including the Subject and Activity variables in my measurement variables, the descriptive variable names used to extract data in the fulfillment of Requirement 2, were also used in the processing of the data.The order function is used to sort the combine dataset; the names function and the descriptive variable labels are used to extract just the mean and standard deviation measurements; the reshape2 library and the melt and dcast functions were used to summarized the combined dataset(i.e., a partial fulfillment of Requirement 5).

**Output** - Requirement 3, using descriptive activity names to describe activities, is fulfilled. This requirement was not fulfilled sooner because the numerical activity identification numbers help facilitate the sorting process. Finally, Requirement 5, creating the independent tidy data set with the average of each selected variable for each activity and each subject, is fulfilled. Please note, to see just how tidy the data is, the so-called tidy dataset was read back in and looked at using the View function (i.e., View(tidydataset.txt)).

###----- Input

Step# 1 Merge/Combine Data Sets:

* Read Training and Testing Variables: X_train.txt and X_test.txt
 
* Read Variable Labels: features.txt

    + Develop Descriptive Variable Labels **(Req 4)**           

* Combine Descriptive Variable Labels with Trainining and Testing Variables
 
    + Rbind, not Merge, was used to to combine the descriptive variable labels and the Values of the training and testing Variables

    + Variables were extracted using column names **(Req 2)**

* Read Activity Variables:  y_train.txt and y_test.txt

* Combine Activity Variable Label with Activity Train and Test Variables

* Read Subject Varibles:   subject_train.txt and subject_test.txt

* Combine Subject Variable Label with Subject Train and Test Variables


* Combine Subject, Activity, and Variables **(Req 1)**     

    + cbind, not Merge, was used to combined the Subject, Activity, and Variables
 
###----- Process

Step# 2 Calculate the Average Value for selected Variables within each activity for each subject 

* Arrange/Order the merged/combined data set by Subject and Activity within Subject

* Reshape the sorted data to facilitate the average calculations using library(reshape2) **(Req 2)**     

* Create data set containing the averages for selected variable in each activity for each subject **(Req 5)** 


###----- Output

Step# 3 Create Tidy Data Set

* Assign a Descriptive Name to Each Activity **(Req 3)**

    + Read Activity Descriptions: activity_labels.txt

    + Develop Descriptive Activity Labels

    + Replace Activity Number with Descriptive Activity Name

* Write Tidy Data Set **(Req 5)**

* View the Tidy Data Set


## End README File

