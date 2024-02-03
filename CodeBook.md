---
title: "CodeBook"
author: "Rona Stewart"
date: "2024-02-02"
output: html_document
---

## Initial dataset

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

## This section of the file sets out what was retained in the tidy dataset
The tidy data set retains only the variables relating to the subjectid, set, activity, and all mean and standard deviation calculations.

## This section of the file lists all of the variables included in all_data

1 subjectid - This identifies the participant.
2 set - This identifies whether the participant is part of the test group or the train group.
3 activity - This identifies the activity the test relates to.
4 tBodyAcc-mean()-X - This is a measure of the mean across X direction.
5 tBodyAcc-mean()-Y - This is a measure of the mean across Y direction.
6 tBodyAcc-mean()-Z - This is a measure of the mean across Z direction.
7 tBodyAcc-std()-X - This is a measure of the standard deviation across X direction.
8 tBodyAcc-std()-Y - This is a measure of the standard deviation across Y direction.
9 tBodyAcc-std()-Z - This is a measure of the standard deviation across Z direction.
10 tBodyAcc-mad()-X - This is a measure of the median across X direction.
11 tBodyAcc-mad()-Y - This is a measure of the median across Y direction.
12 tBodyAcc-mad()-Z - This is a measure of the median across Z direction.
13 tBodyAcc-max()-X - This is a measure of the max across X direction.
14 tBodyAcc-max()-Y - This is a measure of the max across Y direction.
15 tBodyAcc-max()-Z - This is a measure of the max across Z direction.
16 tBodyAcc-min()-X - This is a measure of the min across X direction.
17 tBodyAcc-min()-Y - This is a measure of the min across Y direction.
18 tBodyAcc-min()-Z - This is a measure of the min across Z direction.
19 tBodyAcc-sma() - This is a measure of the Signal magnitude area across N/A direction.
20 tBodyAcc-energy()-X - This is a measure of the Energy (Sum of the squares divided by the number of values) across X direction.
21 tBodyAcc-energy()-Y - This is a measure of the Energy (Sum of the squares divided by the number of values) across Y direction.
22 tBodyAcc-energy()-Z - This is a measure of the Energy (Sum of the squares divided by the number of values) across Z direction.
23 tBodyAcc-iqr()-X - This is a measure of the Interquartile range  across X direction.
24 tBodyAcc-iqr()-Y - This is a measure of the Interquartile range  across Y direction.
25 tBodyAcc-iqr()-Z - This is a measure of the Interquartile range  across Z direction.
26 tBodyAcc-entropy()-X - This is a measure of the Signal entropy across X direction.
27 tBodyAcc-entropy()-Y - This is a measure of the Signal entropy across Y direction.
28 tBodyAcc-entropy()-Z - This is a measure of the Signal entropy across Z direction.
29 tBodyAcc-arCoeff()-X,1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
30 tBodyAcc-arCoeff()-X,2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
31 tBodyAcc-arCoeff()-X,3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
32 tBodyAcc-arCoeff()-X,4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
33 tBodyAcc-arCoeff()-Y,1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
34 tBodyAcc-arCoeff()-Y,2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
35 tBodyAcc-arCoeff()-Y,3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
36 tBodyAcc-arCoeff()-Y,4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
37 tBodyAcc-arCoeff()-Z,1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
38 tBodyAcc-arCoeff()-Z,2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
39 tBodyAcc-arCoeff()-Z,3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
40 tBodyAcc-arCoeff()-Z,4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
41 tBodyAcc-correlation()-X,Y - This is a measure of the correlation coefficient between two signals across X, Y direction.
42 tBodyAcc-correlation()-X,Z - This is a measure of the correlation coefficient between two signals across X, Z direction.
43 tBodyAcc-correlation()-Y,Z - This is a measure of the correlation coefficient between two signals across Y, Z direction.
44 tGravityAcc-mean()-X - This is a measure of the mean across X direction.
45 tGravityAcc-mean()-Y - This is a measure of the mean across Y direction.
46 tGravityAcc-mean()-Z - This is a measure of the mean across Z direction.
47 tGravityAcc-std()-X - This is a measure of the standard deviation across X direction.
48 tGravityAcc-std()-Y - This is a measure of the standard deviation across Y direction.
49 tGravityAcc-std()-Z - This is a measure of the standard deviation across Z direction.
50 tGravityAcc-mad()-X - This is a measure of the median across X direction.
51 tGravityAcc-mad()-Y - This is a measure of the median across Y direction.
52 tGravityAcc-mad()-Z - This is a measure of the median across Z direction.
53 tGravityAcc-max()-X - This is a measure of the max across X direction.
54 tGravityAcc-max()-Y - This is a measure of the max across Y direction.
55 tGravityAcc-max()-Z - This is a measure of the max across Z direction.
56 tGravityAcc-min()-X - This is a measure of the min across X direction.
57 tGravityAcc-min()-Y - This is a measure of the min across Y direction.
58 tGravityAcc-min()-Z - This is a measure of the min across Z direction.
59 tGravityAcc-sma() - This is a measure of the Signal magnitude area across N/A direction.
60 tGravityAcc-energy()-X - This is a measure of the Energy (Sum of the squares divided by the number of values) across X direction.
61 tGravityAcc-energy()-Y - This is a measure of the Energy (Sum of the squares divided by the number of values) across Y direction.
62 tGravityAcc-energy()-Z - This is a measure of the Energy (Sum of the squares divided by the number of values) across Z direction.
63 tGravityAcc-iqr()-X - This is a measure of the Interquartile range  across X direction.
64 tGravityAcc-iqr()-Y - This is a measure of the Interquartile range  across Y direction.
65 tGravityAcc-iqr()-Z - This is a measure of the Interquartile range  across Z direction.
66 tGravityAcc-entropy()-X - This is a measure of the Signal entropy across X direction.
67 tGravityAcc-entropy()-Y - This is a measure of the Signal entropy across Y direction.
68 tGravityAcc-entropy()-Z - This is a measure of the Signal entropy across Z direction.
69 tGravityAcc-arCoeff()-X,1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
70 tGravityAcc-arCoeff()-X,2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
71 tGravityAcc-arCoeff()-X,3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
72 tGravityAcc-arCoeff()-X,4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
73 tGravityAcc-arCoeff()-Y,1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
74 tGravityAcc-arCoeff()-Y,2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
75 tGravityAcc-arCoeff()-Y,3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
76 tGravityAcc-arCoeff()-Y,4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
77 tGravityAcc-arCoeff()-Z,1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
78 tGravityAcc-arCoeff()-Z,2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
79 tGravityAcc-arCoeff()-Z,3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
80 tGravityAcc-arCoeff()-Z,4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
81 tGravityAcc-correlation()-X,Y - This is a measure of the correlation coefficient between two signals across X, Y direction.
82 tGravityAcc-correlation()-X,Z - This is a measure of the correlation coefficient between two signals across X, Z direction.
83 tGravityAcc-correlation()-Y,Z - This is a measure of the correlation coefficient between two signals across Y, Z direction.
84 tBodyAccJerk-mean()-X - This is a measure of the mean across X direction.
85 tBodyAccJerk-mean()-Y - This is a measure of the mean across Y direction.
86 tBodyAccJerk-mean()-Z - This is a measure of the mean across Z direction.
87 tBodyAccJerk-std()-X - This is a measure of the standard deviation across X direction.
88 tBodyAccJerk-std()-Y - This is a measure of the standard deviation across Y direction.
89 tBodyAccJerk-std()-Z - This is a measure of the standard deviation across Z direction.
90 tBodyAccJerk-mad()-X - This is a measure of the median across X direction.
91 tBodyAccJerk-mad()-Y - This is a measure of the median across Y direction.
92 tBodyAccJerk-mad()-Z - This is a measure of the median across Z direction.
93 tBodyAccJerk-max()-X - This is a measure of the max across X direction.
94 tBodyAccJerk-max()-Y - This is a measure of the max across Y direction.
95 tBodyAccJerk-max()-Z - This is a measure of the max across Z direction.
96 tBodyAccJerk-min()-X - This is a measure of the min across X direction.
97 tBodyAccJerk-min()-Y - This is a measure of the min across Y direction.
98 tBodyAccJerk-min()-Z - This is a measure of the min across Z direction.
99 tBodyAccJerk-sma() - This is a measure of the Signal magnitude area across N/A direction.
100 tBodyAccJerk-energy()-X - This is a measure of the Energy (Sum of the squares divided by the number of values) across X direction.
101 tBodyAccJerk-energy()-Y - This is a measure of the Energy (Sum of the squares divided by the number of values) across Y direction.
102 tBodyAccJerk-energy()-Z - This is a measure of the Energy (Sum of the squares divided by the number of values) across Z direction.
103 tBodyAccJerk-iqr()-X - This is a measure of the Interquartile range  across X direction.
104 tBodyAccJerk-iqr()-Y - This is a measure of the Interquartile range  across Y direction.
105 tBodyAccJerk-iqr()-Z - This is a measure of the Interquartile range  across Z direction.
106 tBodyAccJerk-entropy()-X - This is a measure of the Signal entropy across X direction.
107 tBodyAccJerk-entropy()-Y - This is a measure of the Signal entropy across Y direction.
108 tBodyAccJerk-entropy()-Z - This is a measure of the Signal entropy across Z direction.
109 tBodyAccJerk-arCoeff()-X,1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
110 tBodyAccJerk-arCoeff()-X,2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
111 tBodyAccJerk-arCoeff()-X,3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
112 tBodyAccJerk-arCoeff()-X,4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
113 tBodyAccJerk-arCoeff()-Y,1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
114 tBodyAccJerk-arCoeff()-Y,2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
115 tBodyAccJerk-arCoeff()-Y,3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
116 tBodyAccJerk-arCoeff()-Y,4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
117 tBodyAccJerk-arCoeff()-Z,1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
118 tBodyAccJerk-arCoeff()-Z,2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
119 tBodyAccJerk-arCoeff()-Z,3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
120 tBodyAccJerk-arCoeff()-Z,4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
121 tBodyAccJerk-correlation()-X,Y - This is a measure of the correlation coefficient between two signals across X, Y direction.
122 tBodyAccJerk-correlation()-X,Z - This is a measure of the correlation coefficient between two signals across X, Z direction.
123 tBodyAccJerk-correlation()-Y,Z - This is a measure of the correlation coefficient between two signals across Y, Z direction.
124 tBodyGyro-mean()-X - This is a measure of the mean across X direction.
125 tBodyGyro-mean()-Y - This is a measure of the mean across Y direction.
126 tBodyGyro-mean()-Z - This is a measure of the mean across Z direction.
127 tBodyGyro-std()-X - This is a measure of the standard deviation across X direction.
128 tBodyGyro-std()-Y - This is a measure of the standard deviation across Y direction.
129 tBodyGyro-std()-Z - This is a measure of the standard deviation across Z direction.
130 tBodyGyro-mad()-X - This is a measure of the median across X direction.
131 tBodyGyro-mad()-Y - This is a measure of the median across Y direction.
132 tBodyGyro-mad()-Z - This is a measure of the median across Z direction.
133 tBodyGyro-max()-X - This is a measure of the max across X direction.
134 tBodyGyro-max()-Y - This is a measure of the max across Y direction.
135 tBodyGyro-max()-Z - This is a measure of the max across Z direction.
136 tBodyGyro-min()-X - This is a measure of the min across X direction.
137 tBodyGyro-min()-Y - This is a measure of the min across Y direction.
138 tBodyGyro-min()-Z - This is a measure of the min across Z direction.
139 tBodyGyro-sma() - This is a measure of the Signal magnitude area across N/A direction.
140 tBodyGyro-energy()-X - This is a measure of the Energy (Sum of the squares divided by the number of values) across X direction.
141 tBodyGyro-energy()-Y - This is a measure of the Energy (Sum of the squares divided by the number of values) across Y direction.
142 tBodyGyro-energy()-Z - This is a measure of the Energy (Sum of the squares divided by the number of values) across Z direction.
143 tBodyGyro-iqr()-X - This is a measure of the Interquartile range  across X direction.
144 tBodyGyro-iqr()-Y - This is a measure of the Interquartile range  across Y direction.
145 tBodyGyro-iqr()-Z - This is a measure of the Interquartile range  across Z direction.
146 tBodyGyro-entropy()-X - This is a measure of the Signal entropy across X direction.
147 tBodyGyro-entropy()-Y - This is a measure of the Signal entropy across Y direction.
148 tBodyGyro-entropy()-Z - This is a measure of the Signal entropy across Z direction.
149 tBodyGyro-arCoeff()-X,1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
150 tBodyGyro-arCoeff()-X,2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
151 tBodyGyro-arCoeff()-X,3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
152 tBodyGyro-arCoeff()-X,4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
153 tBodyGyro-arCoeff()-Y,1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
154 tBodyGyro-arCoeff()-Y,2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
155 tBodyGyro-arCoeff()-Y,3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
156 tBodyGyro-arCoeff()-Y,4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
157 tBodyGyro-arCoeff()-Z,1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
158 tBodyGyro-arCoeff()-Z,2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
159 tBodyGyro-arCoeff()-Z,3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
160 tBodyGyro-arCoeff()-Z,4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
161 tBodyGyro-correlation()-X,Y - This is a measure of the correlation coefficient between two signals across X, Y direction.
162 tBodyGyro-correlation()-X,Z - This is a measure of the correlation coefficient between two signals across X, Z direction.
163 tBodyGyro-correlation()-Y,Z - This is a measure of the correlation coefficient between two signals across Y, Z direction.
164 tBodyGyroJerk-mean()-X - This is a measure of the mean across X direction.
165 tBodyGyroJerk-mean()-Y - This is a measure of the mean across Y direction.
166 tBodyGyroJerk-mean()-Z - This is a measure of the mean across Z direction.
167 tBodyGyroJerk-std()-X - This is a measure of the standard deviation across X direction.
168 tBodyGyroJerk-std()-Y - This is a measure of the standard deviation across Y direction.
169 tBodyGyroJerk-std()-Z - This is a measure of the standard deviation across Z direction.
170 tBodyGyroJerk-mad()-X - This is a measure of the median across X direction.
171 tBodyGyroJerk-mad()-Y - This is a measure of the median across Y direction.
172 tBodyGyroJerk-mad()-Z - This is a measure of the median across Z direction.
173 tBodyGyroJerk-max()-X - This is a measure of the max across X direction.
174 tBodyGyroJerk-max()-Y - This is a measure of the max across Y direction.
175 tBodyGyroJerk-max()-Z - This is a measure of the max across Z direction.
176 tBodyGyroJerk-min()-X - This is a measure of the min across X direction.
177 tBodyGyroJerk-min()-Y - This is a measure of the min across Y direction.
178 tBodyGyroJerk-min()-Z - This is a measure of the min across Z direction.
179 tBodyGyroJerk-sma() - This is a measure of the Signal magnitude area across N/A direction.
180 tBodyGyroJerk-energy()-X - This is a measure of the Energy (Sum of the squares divided by the number of values) across X direction.
181 tBodyGyroJerk-energy()-Y - This is a measure of the Energy (Sum of the squares divided by the number of values) across Y direction.
182 tBodyGyroJerk-energy()-Z - This is a measure of the Energy (Sum of the squares divided by the number of values) across Z direction.
183 tBodyGyroJerk-iqr()-X - This is a measure of the Interquartile range  across X direction.
184 tBodyGyroJerk-iqr()-Y - This is a measure of the Interquartile range  across Y direction.
185 tBodyGyroJerk-iqr()-Z - This is a measure of the Interquartile range  across Z direction.
186 tBodyGyroJerk-entropy()-X - This is a measure of the Signal entropy across X direction.
187 tBodyGyroJerk-entropy()-Y - This is a measure of the Signal entropy across Y direction.
188 tBodyGyroJerk-entropy()-Z - This is a measure of the Signal entropy across Z direction.
189 tBodyGyroJerk-arCoeff()-X,1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
190 tBodyGyroJerk-arCoeff()-X,2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
191 tBodyGyroJerk-arCoeff()-X,3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
192 tBodyGyroJerk-arCoeff()-X,4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across X direction.
193 tBodyGyroJerk-arCoeff()-Y,1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
194 tBodyGyroJerk-arCoeff()-Y,2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
195 tBodyGyroJerk-arCoeff()-Y,3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
196 tBodyGyroJerk-arCoeff()-Y,4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Y direction.
197 tBodyGyroJerk-arCoeff()-Z,1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
198 tBodyGyroJerk-arCoeff()-Z,2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
199 tBodyGyroJerk-arCoeff()-Z,3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
200 tBodyGyroJerk-arCoeff()-Z,4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Z direction.
201 tBodyGyroJerk-correlation()-X,Y - This is a measure of the correlation coefficient between two signals across X, Y direction.
202 tBodyGyroJerk-correlation()-X,Z - This is a measure of the correlation coefficient between two signals across X, Z direction.
203 tBodyGyroJerk-correlation()-Y,Z - This is a measure of the correlation coefficient between two signals across Y, Z direction.
204 tBodyAccMag-mean() - This is a measure of the mean across N/A direction.
205 tBodyAccMag-std() - This is a measure of the standard deviation across N/A direction.
206 tBodyAccMag-mad() - This is a measure of the median across N/A direction.
207 tBodyAccMag-max() - This is a measure of the max across N/A direction.
208 tBodyAccMag-min() - This is a measure of the min across N/A direction.
209 tBodyAccMag-sma() - This is a measure of the Signal magnitude area across N/A direction.
210 tBodyAccMag-energy() - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
211 tBodyAccMag-iqr() - This is a measure of the Interquartile range  across N/A direction.
212 tBodyAccMag-entropy() - This is a measure of the Signal entropy across N/A direction.
213 tBodyAccMag-arCoeff()1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across N/A direction.
214 tBodyAccMag-arCoeff()2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across N/A direction.
215 tBodyAccMag-arCoeff()3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across N/A direction.
216 tBodyAccMag-arCoeff()4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across N/A direction.
217 tGravityAccMag-mean() - This is a measure of the mean across Gravity (angle) direction.
218 tGravityAccMag-std() - This is a measure of the standard deviation across Gravity (angle) direction.
219 tGravityAccMag-mad() - This is a measure of the median across Gravity (angle) direction.
220 tGravityAccMag-max() - This is a measure of the max across Gravity (angle) direction.
221 tGravityAccMag-min() - This is a measure of the min across Gravity (angle) direction.
222 tGravityAccMag-sma() - This is a measure of the Signal magnitude area across Gravity (angle) direction.
223 tGravityAccMag-energy() - This is a measure of the Energy (Sum of the squares divided by the number of values) across Gravity (angle) direction.
224 tGravityAccMag-iqr() - This is a measure of the Interquartile range  across Gravity (angle) direction.
225 tGravityAccMag-entropy() - This is a measure of the Signal entropy across Gravity (angle) direction.
226 tGravityAccMag-arCoeff()1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Gravity (angle) direction.
227 tGravityAccMag-arCoeff()2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Gravity (angle) direction.
228 tGravityAccMag-arCoeff()3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Gravity (angle) direction.
229 tGravityAccMag-arCoeff()4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across Gravity (angle) direction.
230 tBodyAccJerkMag-mean() - This is a measure of the mean across N/A direction.
231 tBodyAccJerkMag-std() - This is a measure of the standard deviation across N/A direction.
232 tBodyAccJerkMag-mad() - This is a measure of the median across N/A direction.
233 tBodyAccJerkMag-max() - This is a measure of the max across N/A direction.
234 tBodyAccJerkMag-min() - This is a measure of the min across N/A direction.
235 tBodyAccJerkMag-sma() - This is a measure of the Signal magnitude area across N/A direction.
236 tBodyAccJerkMag-energy() - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
237 tBodyAccJerkMag-iqr() - This is a measure of the Interquartile range  across N/A direction.
238 tBodyAccJerkMag-entropy() - This is a measure of the Signal entropy across N/A direction.
239 tBodyAccJerkMag-arCoeff()1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across N/A direction.
240 tBodyAccJerkMag-arCoeff()2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across N/A direction.
241 tBodyAccJerkMag-arCoeff()3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across N/A direction.
242 tBodyAccJerkMag-arCoeff()4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across N/A direction.
243 tBodyGyroMag-mean() - This is a measure of the mean across N/A direction.
244 tBodyGyroMag-std() - This is a measure of the standard deviation across N/A direction.
245 tBodyGyroMag-mad() - This is a measure of the median across N/A direction.
246 tBodyGyroMag-max() - This is a measure of the max across N/A direction.
247 tBodyGyroMag-min() - This is a measure of the min across N/A direction.
248 tBodyGyroMag-sma() - This is a measure of the Signal magnitude area across N/A direction.
249 tBodyGyroMag-energy() - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
250 tBodyGyroMag-iqr() - This is a measure of the Interquartile range  across N/A direction.
251 tBodyGyroMag-entropy() - This is a measure of the Signal entropy across N/A direction.
252 tBodyGyroMag-arCoeff()1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across N/A direction.
253 tBodyGyroMag-arCoeff()2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across N/A direction.
254 tBodyGyroMag-arCoeff()3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across N/A direction.
255 tBodyGyroMag-arCoeff()4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across N/A direction.
256 tBodyGyroJerkMag-mean() - This is a measure of the mean across N/A direction.
257 tBodyGyroJerkMag-std() - This is a measure of the standard deviation across N/A direction.
258 tBodyGyroJerkMag-mad() - This is a measure of the median across N/A direction.
259 tBodyGyroJerkMag-max() - This is a measure of the max across N/A direction.
260 tBodyGyroJerkMag-min() - This is a measure of the min across N/A direction.
261 tBodyGyroJerkMag-sma() - This is a measure of the Signal magnitude area across N/A direction.
262 tBodyGyroJerkMag-energy() - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
263 tBodyGyroJerkMag-iqr() - This is a measure of the Interquartile range  across N/A direction.
264 tBodyGyroJerkMag-entropy() - This is a measure of the Signal entropy across N/A direction.
265 tBodyGyroJerkMag-arCoeff()1 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across N/A direction.
266 tBodyGyroJerkMag-arCoeff()2 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across N/A direction.
267 tBodyGyroJerkMag-arCoeff()3 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across N/A direction.
268 tBodyGyroJerkMag-arCoeff()4 - This is a measure of the Autorregresion coefficients (Burg order equal to 4) across N/A direction.
269 fBodyAcc-mean()-X - This is a measure of the mean across X direction.
270 fBodyAcc-mean()-Y - This is a measure of the mean across Y direction.
271 fBodyAcc-mean()-Z - This is a measure of the mean across Z direction.
272 fBodyAcc-std()-X - This is a measure of the standard deviation across X direction.
273 fBodyAcc-std()-Y - This is a measure of the standard deviation across Y direction.
274 fBodyAcc-std()-Z - This is a measure of the standard deviation across Z direction.
275 fBodyAcc-mad()-X - This is a measure of the median across X direction.
276 fBodyAcc-mad()-Y - This is a measure of the median across Y direction.
277 fBodyAcc-mad()-Z - This is a measure of the median across Z direction.
278 fBodyAcc-max()-X - This is a measure of the max across X direction.
279 fBodyAcc-max()-Y - This is a measure of the max across Y direction.
280 fBodyAcc-max()-Z - This is a measure of the max across Z direction.
281 fBodyAcc-min()-X - This is a measure of the min across X direction.
282 fBodyAcc-min()-Y - This is a measure of the min across Y direction.
283 fBodyAcc-min()-Z - This is a measure of the min across Z direction.
284 fBodyAcc-sma() - This is a measure of the Signal magnitude area across N/A direction.
285 fBodyAcc-energy()-X - This is a measure of the Energy (Sum of the squares divided by the number of values) across X direction.
286 fBodyAcc-energy()-Y - This is a measure of the Energy (Sum of the squares divided by the number of values) across Y direction.
287 fBodyAcc-energy()-Z - This is a measure of the Energy (Sum of the squares divided by the number of values) across Z direction.
288 fBodyAcc-iqr()-X - This is a measure of the Interquartile range  across X direction.
289 fBodyAcc-iqr()-Y - This is a measure of the Interquartile range  across Y direction.
290 fBodyAcc-iqr()-Z - This is a measure of the Interquartile range  across Z direction.
291 fBodyAcc-entropy()-X - This is a measure of the Signal entropy across X direction.
292 fBodyAcc-entropy()-Y - This is a measure of the Signal entropy across Y direction.
293 fBodyAcc-entropy()-Z - This is a measure of the Signal entropy across Z direction.
294 fBodyAcc-maxInds-X - This is a measure of the index of the frequency component with largest magnitude across X direction.
295 fBodyAcc-maxInds-Y - This is a measure of the index of the frequency component with largest magnitude across Y direction.
296 fBodyAcc-maxInds-Z - This is a measure of the index of the frequency component with largest magnitude across Z direction.
297 fBodyAcc-meanFreq()-X - This is a measure of the Weighted average of the frequency components to obtain a mean frequency across X direction.
298 fBodyAcc-meanFreq()-Y - This is a measure of the Weighted average of the frequency components to obtain a mean frequency across Y direction.
299 fBodyAcc-meanFreq()-Z - This is a measure of the Weighted average of the frequency components to obtain a mean frequency across Z direction.
300 fBodyAcc-skewness()-X - This is a measure of the skewness of the frequency domain signal  across X direction.
301 fBodyAcc-kurtosis()-X - This is a measure of the kurtosis of the frequency domain signal  across X direction.
302 fBodyAcc-skewness()-Y - This is a measure of the skewness of the frequency domain signal  across Y direction.
303 fBodyAcc-kurtosis()-Y - This is a measure of the kurtosis of the frequency domain signal  across Y direction.
304 fBodyAcc-skewness()-Z - This is a measure of the skewness of the frequency domain signal  across Z direction.
305 fBodyAcc-kurtosis()-Z - This is a measure of the kurtosis of the frequency domain signal  across Z direction.
306 fBodyAcc-bandsEnergy()-1,8 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
307 fBodyAcc-bandsEnergy()-9,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
308 fBodyAcc-bandsEnergy()-17,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
309 fBodyAcc-bandsEnergy()-25,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
310 fBodyAcc-bandsEnergy()-33,40 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
311 fBodyAcc-bandsEnergy()-41,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
312 fBodyAcc-bandsEnergy()-49,56 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
313 fBodyAcc-bandsEnergy()-57,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
314 fBodyAcc-bandsEnergy()-1,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
315 fBodyAcc-bandsEnergy()-17,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
316 fBodyAcc-bandsEnergy()-33,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
317 fBodyAcc-bandsEnergy()-49,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
318 fBodyAcc-bandsEnergy()-1,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
319 fBodyAcc-bandsEnergy()-25,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
320 fBodyAcc-bandsEnergy()-1,8 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
321 fBodyAcc-bandsEnergy()-9,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
322 fBodyAcc-bandsEnergy()-17,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
323 fBodyAcc-bandsEnergy()-25,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
324 fBodyAcc-bandsEnergy()-33,40 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
325 fBodyAcc-bandsEnergy()-41,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
326 fBodyAcc-bandsEnergy()-49,56 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
327 fBodyAcc-bandsEnergy()-57,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
328 fBodyAcc-bandsEnergy()-1,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
329 fBodyAcc-bandsEnergy()-17,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
330 fBodyAcc-bandsEnergy()-33,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
331 fBodyAcc-bandsEnergy()-49,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
332 fBodyAcc-bandsEnergy()-1,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
333 fBodyAcc-bandsEnergy()-25,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
334 fBodyAcc-bandsEnergy()-1,8 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
335 fBodyAcc-bandsEnergy()-9,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
336 fBodyAcc-bandsEnergy()-17,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
337 fBodyAcc-bandsEnergy()-25,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
338 fBodyAcc-bandsEnergy()-33,40 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
339 fBodyAcc-bandsEnergy()-41,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
340 fBodyAcc-bandsEnergy()-49,56 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
341 fBodyAcc-bandsEnergy()-57,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
342 fBodyAcc-bandsEnergy()-1,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
343 fBodyAcc-bandsEnergy()-17,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
344 fBodyAcc-bandsEnergy()-33,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
345 fBodyAcc-bandsEnergy()-49,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
346 fBodyAcc-bandsEnergy()-1,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
347 fBodyAcc-bandsEnergy()-25,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
348 fBodyAccJerk-mean()-X - This is a measure of the mean across X direction.
349 fBodyAccJerk-mean()-Y - This is a measure of the mean across Y direction.
350 fBodyAccJerk-mean()-Z - This is a measure of the mean across Z direction.
351 fBodyAccJerk-std()-X - This is a measure of the standard deviation across X direction.
352 fBodyAccJerk-std()-Y - This is a measure of the standard deviation across Y direction.
353 fBodyAccJerk-std()-Z - This is a measure of the standard deviation across Z direction.
354 fBodyAccJerk-mad()-X - This is a measure of the median across X direction.
355 fBodyAccJerk-mad()-Y - This is a measure of the median across Y direction.
356 fBodyAccJerk-mad()-Z - This is a measure of the median across Z direction.
357 fBodyAccJerk-max()-X - This is a measure of the max across X direction.
358 fBodyAccJerk-max()-Y - This is a measure of the max across Y direction.
359 fBodyAccJerk-max()-Z - This is a measure of the max across Z direction.
360 fBodyAccJerk-min()-X - This is a measure of the min across X direction.
361 fBodyAccJerk-min()-Y - This is a measure of the min across Y direction.
362 fBodyAccJerk-min()-Z - This is a measure of the min across Z direction.
363 fBodyAccJerk-sma() - This is a measure of the Signal magnitude area across N/A direction.
364 fBodyAccJerk-energy()-X - This is a measure of the Energy (Sum of the squares divided by the number of values) across X direction.
365 fBodyAccJerk-energy()-Y - This is a measure of the Energy (Sum of the squares divided by the number of values) across Y direction.
366 fBodyAccJerk-energy()-Z - This is a measure of the Energy (Sum of the squares divided by the number of values) across Z direction.
367 fBodyAccJerk-iqr()-X - This is a measure of the Interquartile range  across X direction.
368 fBodyAccJerk-iqr()-Y - This is a measure of the Interquartile range  across Y direction.
369 fBodyAccJerk-iqr()-Z - This is a measure of the Interquartile range  across Z direction.
370 fBodyAccJerk-entropy()-X - This is a measure of the Signal entropy across X direction.
371 fBodyAccJerk-entropy()-Y - This is a measure of the Signal entropy across Y direction.
372 fBodyAccJerk-entropy()-Z - This is a measure of the Signal entropy across Z direction.
373 fBodyAccJerk-maxInds-X - This is a measure of the index of the frequency component with largest magnitude across X direction.
374 fBodyAccJerk-maxInds-Y - This is a measure of the index of the frequency component with largest magnitude across Y direction.
375 fBodyAccJerk-maxInds-Z - This is a measure of the index of the frequency component with largest magnitude across Z direction.
376 fBodyAccJerk-meanFreq()-X - This is a measure of the Weighted average of the frequency components to obtain a mean frequency across X direction.
377 fBodyAccJerk-meanFreq()-Y - This is a measure of the Weighted average of the frequency components to obtain a mean frequency across Y direction.
378 fBodyAccJerk-meanFreq()-Z - This is a measure of the Weighted average of the frequency components to obtain a mean frequency across Z direction.
379 fBodyAccJerk-skewness()-X - This is a measure of the skewness of the frequency domain signal  across X direction.
380 fBodyAccJerk-kurtosis()-X - This is a measure of the kurtosis of the frequency domain signal  across X direction.
381 fBodyAccJerk-skewness()-Y - This is a measure of the skewness of the frequency domain signal  across Y direction.
382 fBodyAccJerk-kurtosis()-Y - This is a measure of the kurtosis of the frequency domain signal  across Y direction.
383 fBodyAccJerk-skewness()-Z - This is a measure of the skewness of the frequency domain signal  across Z direction.
384 fBodyAccJerk-kurtosis()-Z - This is a measure of the kurtosis of the frequency domain signal  across Z direction.
385 fBodyAccJerk-bandsEnergy()-1,8 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
386 fBodyAccJerk-bandsEnergy()-9,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
387 fBodyAccJerk-bandsEnergy()-17,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
388 fBodyAccJerk-bandsEnergy()-25,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
389 fBodyAccJerk-bandsEnergy()-33,40 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
390 fBodyAccJerk-bandsEnergy()-41,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
391 fBodyAccJerk-bandsEnergy()-49,56 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
392 fBodyAccJerk-bandsEnergy()-57,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
393 fBodyAccJerk-bandsEnergy()-1,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
394 fBodyAccJerk-bandsEnergy()-17,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
395 fBodyAccJerk-bandsEnergy()-33,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
396 fBodyAccJerk-bandsEnergy()-49,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
397 fBodyAccJerk-bandsEnergy()-1,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
398 fBodyAccJerk-bandsEnergy()-25,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
399 fBodyAccJerk-bandsEnergy()-1,8 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
400 fBodyAccJerk-bandsEnergy()-9,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
401 fBodyAccJerk-bandsEnergy()-17,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
402 fBodyAccJerk-bandsEnergy()-25,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
403 fBodyAccJerk-bandsEnergy()-33,40 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
404 fBodyAccJerk-bandsEnergy()-41,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
405 fBodyAccJerk-bandsEnergy()-49,56 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
406 fBodyAccJerk-bandsEnergy()-57,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
407 fBodyAccJerk-bandsEnergy()-1,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
408 fBodyAccJerk-bandsEnergy()-17,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
409 fBodyAccJerk-bandsEnergy()-33,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
410 fBodyAccJerk-bandsEnergy()-49,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
411 fBodyAccJerk-bandsEnergy()-1,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
412 fBodyAccJerk-bandsEnergy()-25,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
413 fBodyAccJerk-bandsEnergy()-1,8 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
414 fBodyAccJerk-bandsEnergy()-9,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
415 fBodyAccJerk-bandsEnergy()-17,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
416 fBodyAccJerk-bandsEnergy()-25,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
417 fBodyAccJerk-bandsEnergy()-33,40 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
418 fBodyAccJerk-bandsEnergy()-41,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
419 fBodyAccJerk-bandsEnergy()-49,56 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
420 fBodyAccJerk-bandsEnergy()-57,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
421 fBodyAccJerk-bandsEnergy()-1,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
422 fBodyAccJerk-bandsEnergy()-17,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
423 fBodyAccJerk-bandsEnergy()-33,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
424 fBodyAccJerk-bandsEnergy()-49,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
425 fBodyAccJerk-bandsEnergy()-1,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
426 fBodyAccJerk-bandsEnergy()-25,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
427 fBodyGyro-mean()-X - This is a measure of the mean across X direction.
428 fBodyGyro-mean()-Y - This is a measure of the mean across Y direction.
429 fBodyGyro-mean()-Z - This is a measure of the mean across Z direction.
430 fBodyGyro-std()-X - This is a measure of the standard deviation across X direction.
431 fBodyGyro-std()-Y - This is a measure of the standard deviation across Y direction.
432 fBodyGyro-std()-Z - This is a measure of the standard deviation across Z direction.
433 fBodyGyro-mad()-X - This is a measure of the median across X direction.
434 fBodyGyro-mad()-Y - This is a measure of the median across Y direction.
435 fBodyGyro-mad()-Z - This is a measure of the median across Z direction.
436 fBodyGyro-max()-X - This is a measure of the max across X direction.
437 fBodyGyro-max()-Y - This is a measure of the max across Y direction.
438 fBodyGyro-max()-Z - This is a measure of the max across Z direction.
439 fBodyGyro-min()-X - This is a measure of the min across X direction.
440 fBodyGyro-min()-Y - This is a measure of the min across Y direction.
441 fBodyGyro-min()-Z - This is a measure of the min across Z direction.
442 fBodyGyro-sma() - This is a measure of the Signal magnitude area across N/A direction.
443 fBodyGyro-energy()-X - This is a measure of the Energy (Sum of the squares divided by the number of values) across X direction.
444 fBodyGyro-energy()-Y - This is a measure of the Energy (Sum of the squares divided by the number of values) across Y direction.
445 fBodyGyro-energy()-Z - This is a measure of the Energy (Sum of the squares divided by the number of values) across Z direction.
446 fBodyGyro-iqr()-X - This is a measure of the Interquartile range  across X direction.
447 fBodyGyro-iqr()-Y - This is a measure of the Interquartile range  across Y direction.
448 fBodyGyro-iqr()-Z - This is a measure of the Interquartile range  across Z direction.
449 fBodyGyro-entropy()-X - This is a measure of the Signal entropy across X direction.
450 fBodyGyro-entropy()-Y - This is a measure of the Signal entropy across Y direction.
451 fBodyGyro-entropy()-Z - This is a measure of the Signal entropy across Z direction.
452 fBodyGyro-maxInds-X - This is a measure of the index of the frequency component with largest magnitude across X direction.
453 fBodyGyro-maxInds-Y - This is a measure of the index of the frequency component with largest magnitude across Y direction.
454 fBodyGyro-maxInds-Z - This is a measure of the index of the frequency component with largest magnitude across Z direction.
455 fBodyGyro-meanFreq()-X - This is a measure of the Weighted average of the frequency components to obtain a mean frequency across X direction.
456 fBodyGyro-meanFreq()-Y - This is a measure of the Weighted average of the frequency components to obtain a mean frequency across Y direction.
457 fBodyGyro-meanFreq()-Z - This is a measure of the Weighted average of the frequency components to obtain a mean frequency across Z direction.
458 fBodyGyro-skewness()-X - This is a measure of the skewness of the frequency domain signal  across X direction.
459 fBodyGyro-kurtosis()-X - This is a measure of the kurtosis of the frequency domain signal  across X direction.
460 fBodyGyro-skewness()-Y - This is a measure of the skewness of the frequency domain signal  across Y direction.
461 fBodyGyro-kurtosis()-Y - This is a measure of the kurtosis of the frequency domain signal  across Y direction.
462 fBodyGyro-skewness()-Z - This is a measure of the skewness of the frequency domain signal  across Z direction.
463 fBodyGyro-kurtosis()-Z - This is a measure of the kurtosis of the frequency domain signal  across Z direction.
464 fBodyGyro-bandsEnergy()-1,8 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
465 fBodyGyro-bandsEnergy()-9,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
466 fBodyGyro-bandsEnergy()-17,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
467 fBodyGyro-bandsEnergy()-25,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
468 fBodyGyro-bandsEnergy()-33,40 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
469 fBodyGyro-bandsEnergy()-41,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
470 fBodyGyro-bandsEnergy()-49,56 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
471 fBodyGyro-bandsEnergy()-57,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
472 fBodyGyro-bandsEnergy()-1,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
473 fBodyGyro-bandsEnergy()-17,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
474 fBodyGyro-bandsEnergy()-33,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
475 fBodyGyro-bandsEnergy()-49,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
476 fBodyGyro-bandsEnergy()-1,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
477 fBodyGyro-bandsEnergy()-25,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
478 fBodyGyro-bandsEnergy()-1,8 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
479 fBodyGyro-bandsEnergy()-9,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
480 fBodyGyro-bandsEnergy()-17,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
481 fBodyGyro-bandsEnergy()-25,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
482 fBodyGyro-bandsEnergy()-33,40 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
483 fBodyGyro-bandsEnergy()-41,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
484 fBodyGyro-bandsEnergy()-49,56 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
485 fBodyGyro-bandsEnergy()-57,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
486 fBodyGyro-bandsEnergy()-1,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
487 fBodyGyro-bandsEnergy()-17,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
488 fBodyGyro-bandsEnergy()-33,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
489 fBodyGyro-bandsEnergy()-49,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
490 fBodyGyro-bandsEnergy()-1,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
491 fBodyGyro-bandsEnergy()-25,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
492 fBodyGyro-bandsEnergy()-1,8 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
493 fBodyGyro-bandsEnergy()-9,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
494 fBodyGyro-bandsEnergy()-17,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
495 fBodyGyro-bandsEnergy()-25,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
496 fBodyGyro-bandsEnergy()-33,40 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
497 fBodyGyro-bandsEnergy()-41,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
498 fBodyGyro-bandsEnergy()-49,56 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
499 fBodyGyro-bandsEnergy()-57,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
500 fBodyGyro-bandsEnergy()-1,16 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
501 fBodyGyro-bandsEnergy()-17,32 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
502 fBodyGyro-bandsEnergy()-33,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
503 fBodyGyro-bandsEnergy()-49,64 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
504 fBodyGyro-bandsEnergy()-1,24 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
505 fBodyGyro-bandsEnergy()-25,48 - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
506 fBodyAccMag-mean() - This is a measure of the mean across N/A direction.
507 fBodyAccMag-std() - This is a measure of the standard deviation across N/A direction.
508 fBodyAccMag-mad() - This is a measure of the median across N/A direction.
509 fBodyAccMag-max() - This is a measure of the max across N/A direction.
510 fBodyAccMag-min() - This is a measure of the min across N/A direction.
511 fBodyAccMag-sma() - This is a measure of the Signal magnitude area across N/A direction.
512 fBodyAccMag-energy() - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
513 fBodyAccMag-iqr() - This is a measure of the Interquartile range  across N/A direction.
514 fBodyAccMag-entropy() - This is a measure of the Signal entropy across N/A direction.
515 fBodyAccMag-maxInds - This is a measure of the max across N/A direction.
516 fBodyAccMag-meanFreq() - This is a measure of the Weighted average of the frequency components to obtain a mean frequency across N/A direction.
517 fBodyAccMag-skewness() - This is a measure of the skewness of the frequency domain signal  across N/A direction.
518 fBodyAccMag-kurtosis() - This is a measure of the kurtosis of the frequency domain signal  across N/A direction.
519 fBodyBodyAccJerkMag-mean() - This is a measure of the mean across N/A direction.
520 fBodyBodyAccJerkMag-std() - This is a measure of the standard deviation across N/A direction.
521 fBodyBodyAccJerkMag-mad() - This is a measure of the median across N/A direction.
522 fBodyBodyAccJerkMag-max() - This is a measure of the max across N/A direction.
523 fBodyBodyAccJerkMag-min() - This is a measure of the min across N/A direction.
524 fBodyBodyAccJerkMag-sma() - This is a measure of the Signal magnitude area across N/A direction.
525 fBodyBodyAccJerkMag-energy() - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
526 fBodyBodyAccJerkMag-iqr() - This is a measure of the Interquartile range  across N/A direction.
527 fBodyBodyAccJerkMag-entropy() - This is a measure of the Signal entropy across N/A direction.
528 fBodyBodyAccJerkMag-maxInds - This is a measure of the max across N/A direction.
529 fBodyBodyAccJerkMag-meanFreq() - This is a measure of the Weighted average of the frequency components to obtain a mean frequency across N/A direction.
530 fBodyBodyAccJerkMag-skewness() - This is a measure of the skewness of the frequency domain signal  across N/A direction.
531 fBodyBodyAccJerkMag-kurtosis() - This is a measure of the kurtosis of the frequency domain signal  across N/A direction.
532 fBodyBodyGyroMag-mean() - This is a measure of the mean across N/A direction.
533 fBodyBodyGyroMag-std() - This is a measure of the standard deviation across N/A direction.
534 fBodyBodyGyroMag-mad() - This is a measure of the median across N/A direction.
535 fBodyBodyGyroMag-max() - This is a measure of the max across N/A direction.
536 fBodyBodyGyroMag-min() - This is a measure of the min across N/A direction.
537 fBodyBodyGyroMag-sma() - This is a measure of the Signal magnitude area across N/A direction.
538 fBodyBodyGyroMag-energy() - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
539 fBodyBodyGyroMag-iqr() - This is a measure of the Interquartile range  across N/A direction.
540 fBodyBodyGyroMag-entropy() - This is a measure of the Signal entropy across N/A direction.
541 fBodyBodyGyroMag-maxInds - This is a measure of the max across N/A direction.
542 fBodyBodyGyroMag-meanFreq() - This is a measure of the Weighted average of the frequency components to obtain a mean frequency across N/A direction.
543 fBodyBodyGyroMag-skewness() - This is a measure of the skewness of the frequency domain signal  across N/A direction.
544 fBodyBodyGyroMag-kurtosis() - This is a measure of the kurtosis of the frequency domain signal  across N/A direction.
545 fBodyBodyGyroJerkMag-mean() - This is a measure of the mean across N/A direction.
546 fBodyBodyGyroJerkMag-std() - This is a measure of the standard deviation across N/A direction.
547 fBodyBodyGyroJerkMag-mad() - This is a measure of the median across N/A direction.
548 fBodyBodyGyroJerkMag-max() - This is a measure of the max across N/A direction.
549 fBodyBodyGyroJerkMag-min() - This is a measure of the min across N/A direction.
550 fBodyBodyGyroJerkMag-sma() - This is a measure of the Signal magnitude area across N/A direction.
551 fBodyBodyGyroJerkMag-energy() - This is a measure of the Energy (Sum of the squares divided by the number of values) across N/A direction.
552 fBodyBodyGyroJerkMag-iqr() - This is a measure of the Interquartile range  across N/A direction.
553 fBodyBodyGyroJerkMag-entropy() - This is a measure of the Signal entropy across N/A direction.
554 fBodyBodyGyroJerkMag-maxInds - This is a measure of the max across N/A direction.
555 fBodyBodyGyroJerkMag-meanFreq() - This is a measure of the Weighted average of the frequency components to obtain a mean frequency across N/A direction.
556 fBodyBodyGyroJerkMag-skewness() - This is a measure of the skewness of the frequency domain signal  across N/A direction.
557 fBodyBodyGyroJerkMag-kurtosis() - This is a measure of the kurtosis of the frequency domain signal  across N/A direction.
558 angle(tBodyAccMean,gravity) - This is a measure of the mean across Gravity (angle) direction.
559 angle(tBodyAccJerkMean),gravityMean) - This is a measure of the mean across Gravity (angle) direction.
560 angle(tBodyGyroMean,gravityMean) - This is a measure of the mean across Gravity (angle) direction.
561 angle(tBodyGyroJerkMean,gravityMean) - This is a measure of the mean across Gravity (angle) direction.
562 angle(X,gravityMean) - This is a measure of the mean across Gravity (angle) direction.
563 angle(Y,gravityMean) - This is a measure of the mean across Gravity (angle) direction.
564 angle(Z,gravityMean) - This is a measure of the mean across Gravity (angle) direction.