## Coursera course "Getting and cleaning data' project cookbook

### Why it is tidy.

The tidy dataset tidysummary was created by calculating the average of each measurements within each activity by each subject.It's a tidy data because 1) each row is one observation
2) each coloumn is one measurement 3) only one type of table 4) there is one linkkey 'subjectid' can be linked to other table if needed.

### Reason for using underscore.

Due to long variable names, underscore were used in the variable names to help seprate a single long string to a more readable varialbe names.

### Overall view about tidy data
Variable 'subjectid' is an identifier ranges from 1 to 30 to identify volunteers who participated in that study. The 'activity' varaible can be treated as a 6-levle factor, it represents 6 different activities as followings: 

*  WALKING
*  WALKING_UPSTAIRS
*  WALKING_DOWNSTAIRS
*  SITTING
*  STANDING
*  LAYING


Since this project request to calculate the mean of the measurements, 'average' is added to the begining of every measurement variable names. Each meaasurement varialbe may include the following elements:

 1. 'time' OR 'frequency'  
 2. 'body' or 'gravity' 
 3  'accelerometer' or 'gyroscope' 
 4. statistical summary 'mean' or 'std'(Standard Deviation)
 5. 'jerk' or 'magnitude' is present when that measurement was done in the orignal dataset
 6. 'xaxis' or 'yaxis' or 'zaxis' (3-axial direction) is present when that measurement existed in the orignal dataset
 7. 'mean_freq'(mean frequency) is present when that measurements existed in the orignal dataset


### Data dictinary:

The followings are variable in the dataset by variables order. All variables(except 'subjectid' and 'activity') are mean value from each measurement by each subjectid and each activity. They are numeric can be used for further analysis. The variable names for measurements are descriptive so no detail explanation provided here. All those variable names start with 'average' and end with 'axis' or 'mean' or 'std' or 'freq'.


 1. subjectid:  subject identifier range from 1 to 30.                                             
 2. activity:   six levels of acitivities include WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITING ,STANDING AND LAYING.                                                   
 3-81. varialbes _time_body_accelerometer_mean_xaxis  were mean of each measurement by each subject and each activity
 4. average_time_body_accelerometer_mean_yaxis                   
 5. average_time_body_accelerometer_mean_zaxis                   
 6. average_time_body_accelerometer_std_xaxis                    
 7. average_time_body_accelerometer_std_yaxis                    
 8. average_time_body_accelerometer_std_zaxis                    
 9. average_time_gravity_accelerometer_mean_xaxis                
10. average_time_gravity_accelerometer_mean_yaxis                
11. average_time_gravity_accelerometer_mean_zaxis                
12. average_time_gravity_accelerometer_std_xaxis                 
13. average_time_gravity_accelerometer_std_yaxis                 
14. average_time_gravity_accelerometer_std_zaxis                 
15. average_time_body_accelerometer_jerk_mean_xaxis              
16. average_time_body_accelerometer_jerk_mean_yaxis              
17. average_time_body_accelerometer_jerk_mean_zaxis              
18. average_time_body_accelerometer_jerk_std_xaxis               
19. average_time_body_accelerometer_jerk_std_yaxis               
20. average_time_body_accelerometer_jerk_std_zaxis               
21. average_time_body_gyroscope_mean_xaxis                       
22. average_time_body_gyroscope_mean_yaxis                       
23. average_time_body_gyroscope_mean_zaxis                       
24. average_time_body_gyroscope_std_xaxis                        
25. average_time_body_gyroscope_std_yaxis                        
26. average_time_body_gyroscope_std_zaxis                        
27. average_time_body_gyroscope_jerk_mean_xaxis                  
28. average_time_body_gyroscope_jerk_mean_yaxis                  
29. average_time_body_gyroscope_jerk_mean_zaxis                  
30. average_time_body_gyroscope_jerk_std_xaxis                   
31. average_time_body_gyroscope_jerk_std_yaxis                   
32. average_time_body_gyroscope_jerk_std_zaxis                   
33. average_time_body_accelerometer_magnitude_mean               
34. average_time_body_accelerometer_magnitude_std                
35. average_time_gravity_accelerometer_magnitude_mean            
36. average_time_gravity_accelerometer_magnitude_std             
37. average_time_body_accelerometer_jerk_magnitude_mean          
38. average_time_body_accelerometer_jerk_magnitude_std           
39. average_time_body_gyroscope_magnitude_mean                   
40. average_time_body_gyroscope_magnitude_std                    
41. average_time_body_gyroscope_jerk_magnitude_mean              
42. average_time_body_gyroscope_jerk_magnitude_std               
43. average_frequency_body_accelerometer_mean_xaxis              
44. average_frequency_body_accelerometer_mean_yaxis              
45. average_frequency_body_accelerometer_mean_zaxis              
46. average_frequency_body_accelerometer_std_xaxis               
47. average_frequency_body_accelerometer_std_yaxis               
48. average_frequency_body_accelerometer_std_zaxis               
49. average_frequency_body_accelerometer_mean_freq_xaxis         
50. average_frequency_body_accelerometer_mean_freq_yaxis         
51. average_frequency_body_accelerometer_mean_freq_zaxis         
52. average_frequency_body_accelerometer_jerk_mean_xaxis         
53. average_frequency_body_accelerometer_jerk_mean_yaxis         
54. average_frequency_body_accelerometer_jerk_mean_zaxis         
55. average_frequency_body_accelerometer_jerk_std_xaxis          
56. average_frequency_body_accelerometer_jerk_std_yaxis          
57. average_frequency_body_accelerometer_jerk_std_zaxis          
58. average_frequency_body_accelerometer_jerk_mean_freq_xaxis    
59. average_frequency_body_accelerometer_jerk_mean_freq_yaxis    
60. average_frequency_body_accelerometer_jerk_mean_freq_zaxis    
61. average_frequency_body_gyroscope_mean_xaxis                  
62. average_frequency_body_gyroscope_mean_yaxis                  
63. average_frequency_body_gyroscope_mean_zaxis                  
64. average_frequency_body_gyroscope_std_xaxis                   
65. average_frequency_body_gyroscope_std_yaxis                   
66. average_frequency_body_gyroscope_std_zaxis                   
67. average_frequency_body_gyroscope_mean_freq_xaxis             
68. average_frequency_body_gyroscope_mean_freq_yaxis             
69. average_frequency_body_gyroscope_mean_freq_zaxis             
70. average_frequency_body_accelerometer_magnitude_mean          
71. average_frequency_body_accelerometer_magnitude_std           
72. average_frequency_body_accelerometer_magnitude_mean_freq     
73. average_frequency_body_accelerometer_jerk_magnitude_mean     
74. average_frequency_body_accelerometer_jerk_magnitude_std      
75. average_frequency_body_accelerometer_jerk_magnitude_mean_freq
76. average_frequency_body_gyroscope_magnitude_mean              
77. average_frequency_body_gyroscope_magnitude_std               
78. average_frequency_body_gyroscope_magnitude_mean_freq         
79. average_frequency_body_gyroscope_jerk_magnitude_mean         
80. average_frequency_body_gyroscope_jerk_magnitude_std          
81. average_frequency_body_gyroscope_jerk_magnitude_mean_freq