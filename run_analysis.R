#### Please read the README File for more details about this R-script
#### Please read the CodeBook for the tidy data variables definitions

### Working Directory Path Structure: Drive:/Main Dir/JHU R Getting and Cleaning Data/UCI HAR Dataset

#  Course Project Script: run_analysis.R

#### Input

# 1 Merge Data Sets:

### Training and Testing Datasets

# Read Variables:   X_train.txt and X_test.txt 

dtrain <- read.table("./train/X_train.txt",header=FALSE)
dtest <-  read.table("./test/X_test.txt",header=FALSE)

# Read Variable Labels: features.txt

dlab <- read.table("features.txt",
                   stringsAsFactors=FALSE,
                   header=FALSE)

vlab <- dlab[, 2] # Eliminate the row names after reading the variable labels

# Develop Descriptive Variable Labels (Requirement 4)

vlab <- gsub("\\(","",vlab) # Remove opened parenthesis
vlab <- gsub("\\)","",vlab) # Remove closed parenthesis
vlab <- gsub("\\-","",vlab) # Remove dash
vlab <- gsub("^t","avgTime",vlab) # set prefix 1 avgTime
vlab <- gsub("^f","avgFreq",vlab) # set prefix 2 avgFreq
vlab <- gsub("meanF","MeanF",vlab)# Differentiate MeanFreq from mean
vlab <- gsub("BodyBody","Body",vlab) # Remove duplication

# Combine Variable Labels with Train and Test Variables

cvar <- rbind(dtrain, dtest)
names(cvar) <- vlab

# Remove Train and Test Datasets

rm(dtrain)
rm(dtest)

# Extract relevant variables using column names (Requirement 2)

cvar <- cvar[, grep("mean|std", names(cvar))]

# Read Activity Variables  y_train.txt and y_test.txt

dactrain <- read.table("./train/y_train.txt")
dactest <- read.table("./test/y_test.txt")

# Combine Activity Variable Label with Activity Train and Test Variables

cact <- rbind(dactrain, dactest)
names(cact) <- "Activity"

# Read Subject Varibles:   subject_train.txt and subject_test.txt

dsubtrain <- read.table("./train/subject_train.txt")
dsubtest <-  read.table("./test/subject_test.txt")

# Combine Subject Variable Label with Subject Train and Test Variables

csub <- rbind(dsubtrain, dsubtest)
names(csub) <- "Subject"


### Used Column Combined for Subject#, Activity#, and Variables (Requirement 1)

cdata <- cbind(csub, cact, cvar)


### Process

# 2 Calculate the Average Value for each Variable within each activity for each subject

### Arrange/Order Merged Data Set by Subject and Activity within Subject

sdata <- cdata[order(cdata$Subject,cdata$Activity),]
rownames(sdata)=NULL # remove rownames and values added when sorting the data

### Reshape the sorted data to facilitate the average calculations

library(reshape2)

sdataMelt <- melt(sdata, id=c("Subject","Activity"),
                  measure.vars=names(cvar))## do not include Subject and Activity variables # (Reqirement 2)

### Create DataSet Containing the averages for each variable in each activity for each subject

avgdata <- dcast(sdataMelt, Subject + Activity ~ variable, mean) # (Requirement 5)
rownames(avgdata)=NULL # remove rownames and values added when casting the data

## Output

# 3 Create Tidy Data Set

### Assign a Descriptiive Name to Each Activity

# Read Activity Descriptions: activity_labels.txt

actdes <- read.table("activity_labels.txt",
                     stringsAsFactor=FALSE)

# Develop Descriptive Activity Labels (Requirement 3)

 actdes[2,2] <- "WalkingUPstairs"
 actdes[3,2] <- "WalkingDNstairs"


### Replace Activity Number with Descriptive Activity Name

for(i in 1:nrow(avgdata))
 {
     index <- avgdata$Activity[i]
     avgdata$Activity[i] <- actdes[index,2]
 }

### Write Tidy Data Set (Requirement 5)

write.table(avgdata, file="tidydataset.txt",
            row.names=FALSE,
            col.names=TRUE)
        
### View Tidy Data Set

tidydata <- read.table("tidydataset.txt", header=TRUE)
View(tidydata)

###End of R-Script

