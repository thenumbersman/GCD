---
title: "CodeBook"
author: "thenumbersman"
date: "Saturday, January 17, 2015"
output: html_document
---

**Introduction**

This CodeBook defines the variables contain in the output file **tidydataset** created by **R-Script run_analysis.R**. This file was created by combining the data from seven other data sets. During the combining process, some variable's values and labels were transformed. Consequently, both the old and new values and/or labels are discussed where appropriate. 


**Dataset Information:**     

Name: tidydataset.txt      
Format: Text     
Structure: Dataframe - 180 Observations, and 68 Variables     
Variables: 2 Control Variables and 66 Computed Variables     
Contents: Average Means and Standard Deviations of Selected Measures of Activity for each Subject     
Selection: Of the 561 features contained in the original dataset, only those features that measured both the mean and standard deviation were extracted     

### Control Variables

**1 Subject:** 

Type: Integer     
Values: 1 through 30     
Use: Nonnumeric; Identify Subject; Facilitate Sorting and Aggregating the Dataset     
Label: Subject     
Transformations: None


**2 Activity:**     

Type: Character     
Old Values: 1 through 6     
New Values: Walking, WalkingUPstairs, WalkingDNstairs, Sitting, Standing, Laying           
Old Use: Nonfactor; Identify Activity Type; Facilitate Sorting and Aggregating the Dataset     
New Use: Nonfactor; Describe Activity     
Old Labels: 1 Walking, 2 Walking Upstairs, 3 Walking Downstairs, 4 Sitting, 5 Standing, 6 Laying     
New Label: Activity     
Transformations: Old numeric values of 1-6 were used to generate new descriptive character values as expressed in the old labels                            

    
### Computed Variables     

Type: Numeric     
Old Values: normalized, detailed descriptive statistics (e.g., minimum, maximum, mean, standard deviation skewness, etc)           
New Values: normalized, summary descriptive statistics (i.e., average means and standard deviations only)     
Units of Measure: See Below     
Old Labels: See Below     
New Labels: See Below     
Transformations: Descriptive changes to old labels were as follows: 

* begining "t" replaced with "Time"" or beginning "f" replaced with "Freq"      
* All special characters removed     
* "avg" Prefix added     
* "mean"" or "std" Suffix added before the letters X,Y,or Z; or after the abbreviation Mag

Abbreviations:     

* Acc - Accelerometer measurement of acceleration
* Gyro - Gyroscope measurement of angular velocity     
* Mag - Magnitude     
* f - Frequency     
* t - Time 
* avg - Average      
* std - Standard Deviation


    
### Seq | Old Label         | New Label  |   Units of Measure      
------ | -------------------------- | ----------------------------- | --------------------------    
 1    | tBodyAcc-mean()-X | avgTimeBodyAccmeanX                  | standard gravity units - g                               
 2    | tBodyAcc-mean()-Y | avgTimeBodyAccmeanY                  | standard gravity units - g     
 3    | tBodyAcc-mean()-Z | avgTimeBodyAccmeanZ                  | standard gravity units - g                               
 4    | tBodyAcc-std()-X | avgTimeBodyAccstdX                    | standard gravity units - g                            
 5    | tBodyAcc-std()-Y | avgTimeBodyAccstdY                    | standard gravity units - g                       
 6    | tBodyAcc-std()-Z | avgTimeBodyAccstdZ                    | standard gravity units - g                        
 7    | tGravityAcc-mean()-X | avgTimeGravityACCmeanX            | standard gravity units - g         
 8    | tGravityAcc-mean()-Y | avgTimeGravityAccmeanY            | standard gravity units - g       
 9    | tGravityAcc-mean()-Z | avgTimeGravityAccmeanZ            | standard gravity units - g       
 10   | tGravityAcc-std()-X | avgTimeGravityAccstdX              | standard gravity units - g     
 11   | tGravityAcc-std()-Y | avgTimeGravityAccstdY              | standard gravity units - g     
 12   | tGravityAcc-std()-Z | avgTimeGravityAccstdZ              | standard gravity units - g     
 13   | tBodyAccJerk-mean()-X | avgTimeBodyAccJerkmeanX          | standard gravity units - g      
 14   | tBodyAccJerk-mean()-Y   | avgTimeBodyAccJerkmeanY        | standard gravity units - g      
 15   | tBodyAccJerk-mean()-Z   | avgTimeBodyAccJerkmeanZ        | standard gravity units - g     
 16   | tBodyAccJerk-std()-X    | avgTimeBodyAccJerkstdX         | standard gravity units - g     
 17   | tBodyAccJerk-std()-Y    | avgTimeBodyAccJerKstdY         | standard gravity units - g     
 18   | tBodyAccJerk-std()-Z    | avgTimeBodyAccJerkstdZ         | standard gravity units - g     
 19   | tBodyGyro-mean()-X      | avgTimeBodyGyromeanX           | radians/second     
 20   | tBodyGyro-mean()-Y      | avgTimeBodyGyromeanY           | radians/second       
 21   | tBodyGyro-mean()-Z |      avgTimeBodyGyromeanZ           | radians/second     
 22   | tBodyGyro-std()-X  |      avgTimeBodyGyrostdX            | radians/second     
 23   | tBodyGyro-std()-Y  |      avgTimeBodyGyrostdY            | radians/second     
 24   | tBodyGyro-std()-Z   |     avgTimeBodyGyrostdZ            | radians/second     
 25   | tBodyGyroJerk-mean()-X |  avgTimeBodyGyroJerkmeanX       | radians/second         
 26   | tBodyGyroJerk-mean()-Y  | avgTimeBOdyGyroJerkmeanY       | radians/second       
 27   | tBodyGyroJerk-mean()-Z  | avgTimeBodyGyroJerkmeanZ       | radians/second     
 28   | tBodyGyroJerk-std()-X   | avgTimeBodyGyroJerkstdX        | radians/second     
 29   | tBodyGyroJerk-std()-Y   | avgTimeBodyGyroJerkstdY        | radians/second     
 30   | tBodyGyroJerk-std()-Z   | avgTimeBOdyGyroJerkstdZ        | radians/second          
 31   | tBodyAccMag-mean() |      avgTimeBodyAccMagmean          | standard gravity units - g     
 32   | tBodyAccMag-std()  |      avgTimeBodyAssMagstd           | standard gravity units - g     
 33   | tGravityAccMag-mean() |   avgTimeGravityAccMagmean       | standard gravity units - g         
 34   | tGravityAccMag-std()  |   avgTimeGravityAccMagstd        | standard gravity units - g     
 35   | tBodyAccJerkMag-mean()|   avgTimeBodyAccJerkMagmean      | standard gravity units - g              
 36   | tBodyAccJerkMag-std() |   avgTimeBodyAccJerkMagstd       | standard gravity units - g     
 37   | tBodyGyroMag-mean() |     avgTimeBodyGyroMagmean         | radians/second     
 38   | tBodyGyroMag-std()  |     avgTimeBodyGyroMagstd          | radians/second     
 39   | tBodyGyroJerkMag-mean()|  avgTimeBodyGyroJerkMagmean     | radians/second         
 40   | tBodyGyroJerkMag-std() |  avgTimeBodyGyroJerkMagstd      | radians/second     
 41   | fBodyAcc-mean()-X    |    avgFreqBodyAccmeanX            | standard gravity units - g     
 42   | fBodyAcc-mean()-Y    |    avgFreqBodyAccmeanY            | standard gravity units - g     
 43   | fBodyAcc-mean()-Z    |    avgFreqBodyAccmeanZ            | standard gravity units - g     
 44   | fBodyAcc-std()-X    |     avgFreqBodyAccstdX             | standard gravity units - g     
 45   | fBodyAcc-std()-Y    |     avgFreqBodyAccstdY             | standard gravity units - g     
 46   | fBodyAcc-std()-Z    |     avgFreqBodyAccstdZ             | standard gravity units - g     
 47   | fBodyAccJerk-mean()-X |   avgFreqBodyAccJerkmeanX        | standard gravity units - g         
 48   | fBodyAccJerk-mean()-Y |   avgFreqBodyAccJerkmeanY        | standard gravity units - g      
 49   | fBodyAccJerk-mean()-Z |   avgFreqBodyAccJerkmeanZ        | standard gravity units - g     
 50   | fBodyAccJerk-std()-X  |   avgFreqBodyAccJerkstdX         | standard gravity units - g     
 51   | fBodyAccJerk-std()-Y   |  avgFreqBodyAccJerkstdY         | standard gravity units - g     
 52   | fBodyAccJerk-std()-Z    | avgFreqBodyAccJerkstdZ         | standard gravity units - g     
 53   | fBodyGyro-mean()-X    |   avgFreqBodyGyromeanX           | radians/second          
 54   | fBodyGyro-mean()-Y     |  avgFreqBodyGyromeanY           | radians/second     
 55   | fBodyGyro-mean()-Z     |  avgFreqBodyGyromeanZ           | radians/second     
 56   | fBodyGyro-std()-X     |   avgFreqBodyGyrostdX            | radians/second     
 57   | fBodyGyro-std()-Y     |   avgFreqBodyGyrostdY            | radians/second     
 58   | fBodyGyro-std()-Z     |   avgFreqBodyGyrostdZ            | radians/second     
 59   | fBodyAccMag-mean()     |  avgFreqBodyAccMagmean          | standard gravity units - g     
 60   | fBodyAccMag-std()     |   avgFreqBodyAccMagstd           | standard gravity units - g     
 61   | fBodyBodyAccJerkMag-mean() | avgFreqBodyAccJerkMagmean   | standard gravity units - g         
 62   | fBodyBodyAccJerkMag-std()  | avgFreqBodyAccJerkMagstd    | standard gravity units - g      
 63   | fBodyBodyGyroMag-mean() | avgFreqBodyGyroMagmean         | radians/second     
 64   | fBodyBodyGyroMag-std() | avgFreqBodyGyroMagstd           | radians/second     
 65   | fBodyBodyGyroJerkMag-mean()| avgFreqBodyGyroJerkMagmean  | radians/second         
 66   | fBodyBodyGyroJerkMag-std() | avgFreqBodyGyroJerkMagstd   | radians/second       


