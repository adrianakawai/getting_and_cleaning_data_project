Code book
===========

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

  * "Subject": The volunteer number who performed the activity 
			   1  .Volunteer one
			   2  .Volunteer two
			   3  .Volunteer three
			   4  .Volunteer four
			   5  .Volunteer five
			   6  .Volunteer six
			   7  .Volunteer seven
			   8  .Volunteer eight
			   9  .Volunteer nine
			   10 .Volunteer ten
			   11 .Volunteer eleven
			   12 .Volunteer twelve
			   13 .Volunteer thirteen
			   14 .Volunteer fourteen
			   15 .Volunteer fifteen
			   16 .Volunteer sixteen
			   17 .Volunteer seventeen
			   18 .Volunteer eighteen
			   19 .Volunteer nineteen
			   20 .Volunteer twelve
			   21 .Volunteer twenty one
			   22 .Volunteer twenty two
			   23 .Volunteer twenty three
			   24 .Volunteer twenty four
			   25 .Volunteer twenty five
			   26 .Volunteer twenty six
			   27 .Volunteer twenty seven
			   28 .Volunteer twenty eight
			   29 .Volunteer twenty nine
			   30 .Volunteer thirty
			      
  * "Activity": Describes the activity performed by the volunteer
			   "WALKING"
			   "WALKING_UPSTAIRS"
			   "WALKING_DOWNSTAIRS"
			   "SITTING"
			   "STANDING"
			   "LAYING"
			   
  * "tBodyAcc_mean_X": Mean of body acceleration in X direction captured by accelerometer. The value is normalized bounded within [-1,1]. The unit is 'g's (gravity of earth -> 9.80665 m/seg2).
  
  * "tBodyAcc_mean_Y": Mean of body acceleration in Y direction captured by accelerometer. The value is normalized bounded within [-1,1]. The unit is 'g's (gravity of earth -> 9.80665 m/seg2).
            
  * "tBodyAcc_mean_Z": Mean of body acceleration in Y direction captured by accelerometer. The value is normalized bounded within [-1,1]. The unit is 'g's (gravity of earth -> 9.80665 m/seg2).
            
  * "tBodyAcc_std_X": Standard deviation of body acceleration in X direction captured by accelerometer. The value is normalized bounded within [-1,1]. The unit is 'g's (gravity of earth -> 9.80665 m/seg2).
             
  * "tBodyAcc_std_Y": Standard deviation of body acceleration in Y direction captured by accelerometer. The value is normalized bounded within [-1,1]. The unit is 'g's (gravity of earth -> 9.80665 m/seg2).
                        
  * "tBodyAcc_std_Z": Standard deviation of body acceleration in Z direction captured by accelerometer. The value is normalized bounded within [-1,1]. The unit is 'g's (gravity of earth -> 9.80665 m/seg2).
                        
  * "tGravityAcc_mean_X": Mean of gravity acceleration in X direction captured by accelerometer. The value is normalized bounded within [-1,1]. The unit is 'g's (gravity of earth -> 9.80665 m/seg2).
       
  * "tGravityAcc_mean_Y": Mean of gravity acceleration in Y direction captured by accelerometer. The value is normalized bounded within [-1,1]. The unit is 'g's (gravity of earth -> 9.80665 m/seg2).
         
  * "tGravityAcc_mean_Z": Mean of gravity acceleration in Z direction captured by accelerometer. The value is normalized bounded within [-1,1]. The unit is 'g's (gravity of earth -> 9.80665 m/seg2).
         
  * "tGravityAcc_std_X": Standard deviation of gravity acceleration in X direction captured by accelerometer. The value is normalized bounded within [-1,1]. The unit is 'g's (gravity of earth -> 9.80665 m/seg2).
          
  * "tGravityAcc_std_Y": Standard deviation of gravity acceleration in Y direction captured by accelerometer. The value is normalized bounded within [-1,1]. The unit is 'g's (gravity of earth -> 9.80665 m/seg2).
                  
  * "tGravityAcc_std_Z": Standard deviation of gravity acceleration in Z direction captured by accelerometer. The value is normalized bounded within [-1,1]. The unit is 'g's (gravity of earth -> 9.80665 m/seg2).
                  
  * "tBodyAccJerk_mean_X": Mean of body acceleration derived in time in X direction (Jerk signal).
  
  * "tBodyAccJerk_mean_Y": Mean of body acceleration derived in time in Y direction (Jerk signal). 

  * "tBodyAccJerk_mean_Z": Mean of body acceleration derived in time in Z direction (Jerk signal). 
  
  * "tBodyAccJerk_std_X": Standard deviation of body acceleration derived in time in X direction (Jerk signal). 
       
  * "tBodyAccJerk_std_Y": Standard deviation of body acceleration derived in time in Y direction (Jerk signal). 
              
  * "tBodyAccJerk_std_Z": Standard deviation of body acceleration derived in time in Z direction (Jerk signal). 
              
  * "tBodyGyro_mean_X": Mean of angular velocity of body in X direction captured by gyroscope. The value is normalized bounded within [-1,1]. The unit is rad/sec.
  
  * "tBodyGyro_mean_Y": Mean of angular velocity of body in Y direction captured by gyroscope. The value is normalized bounded within [-1,1]. The unit is rad/sec.        

  * "tBodyGyro_mean_Z": Mean of angular velocity of body in Z direction captured by gyroscope. The value is normalized bounded within [-1,1]. The unit is rad/sec.
  
  * "tBodyGyro_std_X": Standard deviation of angular velocity of body in X direction captured by gyroscope. The value is normalized bounded within [-1,1]. The unit is rad/sec.
  
  * "tBodyGyro_std_Y": Standard deviation of angular velocity of body in Y direction captured by gyroscope. The value is normalized bounded within [-1,1]. The unit is rad/sec.
            
  * "tBodyGyro_std_Z": Standard deviation of angular velocity of body in Z direction captured by gyroscope. The value is normalized bounded within [-1,1]. The unit is rad/sec.
            
  * "tBodyGyroJerk_mean_X": Mean of angular velocity of body derived in time in X direction (Jerk signal).   

  * "tBodyGyroJerk_mean_Y": Mean of angular velocity of body derived in time in Y direction (Jerk signal).   
     
  * "tBodyGyroJerk_mean_Z": Mean of angular velocity of body derived in time in Z direction (Jerk signal).   
     
  * "tBodyGyroJerk_std_X": Standard deviation of angular velocity of body derived in time in X direction (Jerk signal).   
      
  * "tBodyGyroJerk_std_Y": Standard deviation of angular velocity of body derived in time in Y direction (Jerk signal).   
            
  * "tBodyGyroJerk_std_Z": Standard deviation of angular velocity of body derived in time in Z direction (Jerk signal).   
            
  * "tBodyAccMag_mean": Mean of magnitude of body acceleration using Euclidean norm.
  
  * "tBodyAccMag_std": Standard deviation of magnitude of body acceleration using Euclidean norm.           

  * "tGravityAccMag_mean": Mean of magnitude of gravity acceleration using Euclidean norm.
  
  * "tGravityAccMag_std": Standard deviation of magnitude of gravity acceleration using Euclidean norm.     
 
  * "tBodyAccJerkMag_mean": Mean of magnitude of body acceleration derived in time using Euclidean norm.
  
  * "tBodyAccJerkMag_std": Standard deviation of magnitude of body acceleration derived in time using Euclidean norm. 

  * "tBodyGyroMag_mean": Mean of magnitude of body angular velocity using Euclidean norm.       

  * "tBodyGyroMag_std": Standard deviation of magnitude of body angular velocity using Euclidean norm.        

  * "tBodyGyroJerkMag_mean": Mean of magnitude of body angular velocity derived in time using Euclidean norm.
  
  * "tBodyGyroJerkMag_std": Standard deviation of magnitude of body angular velocity derived in time using Euclidean norm.
     
  * "fBodyAcc_mean_X": Mean of Fast Fourier Transform applied to body acceleration in X direction.
  
  * "fBodyAcc_mean_Y": Mean of Fast Fourier Transform applied to body acceleration in Y direction.
  
  * "fBodyAcc_mean_Z": Mean of Fast Fourier Transform applied to body acceleration in Z direction.
            
  * "fBodyAcc_std_X": Standard deviation of Fast Fourier Transform applied to body acceleration in X direction.
        
  * "fBodyAcc_std_Y": Standard deviation of Fast Fourier Transform applied to body acceleration in Y direction.
                   
  * "fBodyAcc_std_Z": Standard deviation of Fast Fourier Transform applied to body acceleration in Z direction.
                  
  * "fBodyAccJerk_mean_X": Mean of Fast Fourier Transform applied to body acceleration derived in time in X direction.      

  * "fBodyAccJerk_mean_Y": Mean of Fast Fourier Transform applied to body acceleration derived in time in Y direction.      
    
  * "fBodyAccJerk_mean_Z": Mean of Fast Fourier Transform applied to body acceleration derived in time in Z direction.      
      
  * "fBodyAccJerk_std_X": Standard deviation of Fast Fourier Transform applied to body acceleration derived in time in X direction.      
       
  * "fBodyAccJerk_std_Y": Standard deviation of Fast Fourier Transform applied to body acceleration derived in time in Y direction.      
             
  * "fBodyAccJerk_std_Z": Standard deviation of Fast Fourier Transform applied to body acceleration derived in time in Z direction.      
              
  * fBodyGyro_mean_X": Mean of Fast Fourier Transform applied to body angular velocity in X direction.  
  
  * "fBodyGyro_mean_Y": Mean of Fast Fourier Transform applied to body angular velocity in Y direction.       
  
  * "fBodyGyro_mean_Z": Mean of Fast Fourier Transform applied to body angular velocity in Z direction.
  
  * "fBodyGyro_std_X": Standard deviation of Fast Fourier Transform applied to body angular velocity in X direction.          

  * "fBodyGyro_std_Y": Standard deviation of Fast Fourier Transform applied to body angular velocity in Y direction.          
          
  * "fBodyGyro_std_Z": Standard deviation of Fast Fourier Transform applied to body angular velocity in Z direction.          
          
  * "fBodyAccMag_mean": Mean of Fast Fourier Transform applied to magnitude of body acceleration using Euclidean norm.         

  * "fBodyAccMag_std": Standard deviation of Fast Fourier Transform applied to magnitude of body acceleration using Euclidean norm.         
        
  * "fBodyBodyAccJerkMag_mean": Mean of Fast Fourier Transform applied to magnitude of body acceleration derived in time using Euclidean norm.
  
  * "fBodyBodyAccJerkMag_std": Standard deviation of Fast Fourier Transform applied to magnitude of body acceleration derived in time using Euclidean norm.
   
  * "fBodyBodyGyroMag_mean": Mean of Fast Fourier Transform applied to magnitude of body angular velocity using Euclidean norm.    
  
  * "fBodyBodyGyroMag_std": Standard deviation of Fast Fourier Transform applied to magnitude of body angular velocity using Euclidean norm.     

  * "fBodyBodyGyroJerkMag_mean": Mean of Fast Fourier Transform applied to magnitude of body angular velocity derived in time using Euclidean norm.    

  * "fBodyBodyGyroJerkMag_std: Standard deviation of Fast Fourier Transform applied to magnitude of body angular velocity derived in time using Euclidean norm.    




