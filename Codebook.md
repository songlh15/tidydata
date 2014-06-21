## Coursera course "Getting and cleaning data' project cookbook

### Why it is tidy.

The tidy dataset tidysummary was created by calculating the average of each measurements. It is tidy data because 1) each row is one observation 2) each coloumn is one measurement 3) it is one type of table 4) there is one link key 'subjectid' can be linked to other table if needed.

### Reason for using underscore in variable names.

Due to long variable names, underscore were used in the variable names to help seprate a single long string to a more readable varialbe names.

### Overall view about tidy data

Variable 'subjectid' is an identifier ranges from 1 to 30 to identify volunteers who participated in that study. The 'activity' varaible can be treated as a 6-levle factor, it represents 6 different activities as followings: 

*  WALKING
*  WALKING_UPSTAIRS
*  WALKING_DOWNSTAIRS
*  SITTING
*  STANDING
*  LAYING

Since this project request us to calculate the mean of the measurements, 'average' is added to the begining of every measurement variable names. Each meaasurement varialbe may include the following elements:

 1. 'time' or 'frequency'  
 2. 'body' or 'gravity' 
 3  'accelerometer' or 'gyroscope' 
 4. statistical summary 'mean' or 'std'(Standard Deviation)
 5. 'jerk' or 'magnitude' is present when that measurement was done in the orignal dataset
 6. 'xaxis' or 'yaxis' or 'zaxis' (3-axial direction) is present when that measurement existed in the orignal dataset
 7. 'mean_freq'(mean frequency) is present when that measurements existed in the orignal dataset

### Data dictinary:

There are 81 variables in this dataset,except 'subjectid' and 'activity', variable number 3 to 81 are mean value from each measurement by each subjectid and each activity, so they are numeric and their variable names start with 'average' and end with 'axis' or 'mean' or 'std' or 'freq'. A list of variables by their order in the dataset is as following:

* subjectid:  subject identifier range from 1 to 30.                                             
* activity:   six levels of acitivities include WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITING ,STANDING AND LAYING.                                                   
*  average_time_body_accelerometer_mean_xaxis
*  average_time_body_accelerometer_mean_yaxis                   
*  average_time_body_accelerometer_mean_zaxis                   
*  average_time_body_accelerometer_std_xaxis                    
*  average_time_body_accelerometer_std_yaxis                    
*  average_time_body_accelerometer_std_zaxis                    
*  average_time_gravity_accelerometer_mean_xaxis                
*  average_time_gravity_accelerometer_mean_yaxis                
*  average_time_gravity_accelerometer_mean_zaxis                
*  average_time_gravity_accelerometer_std_xaxis                 
*  average_time_gravity_accelerometer_std_yaxis                 
*  average_time_gravity_accelerometer_std_zaxis                 
*  average_time_body_accelerometer_jerk_mean_xaxis              
*  average_time_body_accelerometer_jerk_mean_yaxis              
*  average_time_body_accelerometer_jerk_mean_zaxis              
*  average_time_body_accelerometer_jerk_std_xaxis               
*  average_time_body_accelerometer_jerk_std_yaxis               
*  average_time_body_accelerometer_jerk_std_zaxis               
*  average_time_body_gyroscope_mean_xaxis                       
*  average_time_body_gyroscope_mean_yaxis                       
*  average_time_body_gyroscope_mean_zaxis                       
*  average_time_body_gyroscope_std_xaxis                        
*  average_time_body_gyroscope_std_yaxis                        
* average_time_body_gyroscope_std_zaxis                        
* average_time_body_gyroscope_jerk_mean_xaxis                  
* average_time_body_gyroscope_jerk_mean_yaxis                  
* average_time_body_gyroscope_jerk_mean_zaxis                  
* average_time_body_gyroscope_jerk_std_xaxis                   
* average_time_body_gyroscope_jerk_std_yaxis                   
* average_time_body_gyroscope_jerk_std_zaxis                   
* average_time_body_accelerometer_magnitude_mean               
* average_time_body_accelerometer_magnitude_std                
* average_time_gravity_accelerometer_magnitude_mean            
* average_time_gravity_accelerometer_magnitude_std             
* average_time_body_accelerometer_jerk_magnitude_mean          
* average_time_body_accelerometer_jerk_magnitude_std           
* average_time_body_gyroscope_magnitude_mean                   
* average_time_body_gyroscope_magnitude_std                    
* average_time_body_gyroscope_jerk_magnitude_mean              
* average_time_body_gyroscope_jerk_magnitude_std               
* average_frequency_body_accelerometer_mean_xaxis              
* average_frequency_body_accelerometer_mean_yaxis              
* average_frequency_body_accelerometer_mean_zaxis              
* average_frequency_body_accelerometer_std_xaxis               
* average_frequency_body_accelerometer_std_yaxis               
* average_frequency_body_accelerometer_std_zaxis               
* average_frequency_body_accelerometer_mean_freq_xaxis         
* average_frequency_body_accelerometer_mean_freq_yaxis         
* average_frequency_body_accelerometer_mean_freq_zaxis         
* average_frequency_body_accelerometer_jerk_mean_xaxis         
* average_frequency_body_accelerometer_jerk_mean_yaxis         
* average_frequency_body_accelerometer_jerk_mean_zaxis         
* average_frequency_body_accelerometer_jerk_std_xaxis          
* average_frequency_body_accelerometer_jerk_std_yaxis          
* average_frequency_body_accelerometer_jerk_std_zaxis          
* average_frequency_body_accelerometer_jerk_mean_freq_xaxis    
* average_frequency_body_accelerometer_jerk_mean_freq_yaxis    
* average_frequency_body_accelerometer_jerk_mean_freq_zaxis    
* average_frequency_body_gyroscope_mean_xaxis                  
* average_frequency_body_gyroscope_mean_yaxis                  
* average_frequency_body_gyroscope_mean_zaxis                  
* average_frequency_body_gyroscope_std_xaxis                   
* average_frequency_body_gyroscope_std_yaxis                   
* average_frequency_body_gyroscope_std_zaxis                   
* average_frequency_body_gyroscope_mean_freq_xaxis             
* average_frequency_body_gyroscope_mean_freq_yaxis             
* average_frequency_body_gyroscope_mean_freq_zaxis             
* average_frequency_body_accelerometer_magnitude_mean          
* average_frequency_body_accelerometer_magnitude_std           
* average_frequency_body_accelerometer_magnitude_mean_freq     
* average_frequency_body_accelerometer_jerk_magnitude_mean     
* average_frequency_body_accelerometer_jerk_magnitude_std      
* average_frequency_body_accelerometer_jerk_magnitude_mean_freq
* average_frequency_body_gyroscope_magnitude_mean              
* average_frequency_body_gyroscope_magnitude_std               
* average_frequency_body_gyroscope_magnitude_mean_freq         
* average_frequency_body_gyroscope_jerk_magnitude_mean         
* average_frequency_body_gyroscope_jerk_magnitude_std          
* average_frequency_body_gyroscope_jerk_magnitude_mean_freq