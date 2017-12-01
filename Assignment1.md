----
 Title: Course Project
 Author: JSAMSON 
----   


### Loading and preprocessing the data

```
##   steps       date interval
## 1    NA 2012-10-01        0
## 2    NA 2012-10-01        5
## 3    NA 2012-10-01       10
## 4    NA 2012-10-01       15
## 5    NA 2012-10-01       20
## 6    NA 2012-10-01       25
```

```
##  Factor w/ 61 levels "2012-10-01","2012-10-02",..: 1 1 1 1 1 1 1 1 1 1 ...
```

### 1) What is mean total number of steps taken per day?

![plot of chunk totalmean](figure/totalmean-1.png)

```
##         date steps
## 1 2012-10-02   126
## 2 2012-10-03 11352
## 3 2012-10-04 12116
## 4 2012-10-05 13294
## 5 2012-10-06 15420
## 6 2012-10-07 11015
```

```
## [1] 10766.19
```

```
## [1] 10765
```

### 2) What is the average daily activity pattern?

![plot of chunk dailyaverage](figure/dailyaverage-1.png)

```
## [1] 835
## 288 Levels: 0 5 10 15 20 25 30 35 40 45 50 55 100 105 110 115 120 ... 2355
```

### The interval with most steps is

### 3) Imputing missing values


```
## [1] 2304
```

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##       0    6778   10395    9354   12811   21194
```

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##      41    9819   10766   10766   12811   21194
```

![plot of chunk missing](figure/missing-1.png)

### 4) Are there differences in activity patterns between weekdays and weekends?

![plot of chunk difference](figure/difference-1.png)
