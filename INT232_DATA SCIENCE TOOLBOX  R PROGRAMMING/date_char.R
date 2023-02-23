a=as.Date("21-01-2020")
class(a)
b="21-01-2020"
class(b)
a="mechanical"
nchar(a)
nchar("a")
c=99:289
length(c)
x <- Sys.time()
 "2020-09-03 17:03:15 EDT"
 class(x)   ## 'POSIXct' object
 
 p <- as.POSIXlt(x)
 p
 names(unclass(p))
 p$wday
 x <- Sys.time()
  x             ## Already in 'POSIXct' format
"2020-09-03 17:03:15 EDT"
  unclass(x)    ## Internal representation
 1599166996
 x$sec         ## Can't do this with 'POSIXct'!

  p <- as.POSIXlt(x)
  p$sec         ## That's better
 15.63401 
 datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10")
  x <- strptime(datestring, "%B %d, %Y %H:%M")
  x

  class(x) 
  x <- as.Date("2012-01-01")
   y <- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S") 
  x-y
  
  x <- as.POSIXlt(x) 
 x-y  
 
 x <- as.Date("2012-03-01") 
  y <- as.Date("2012-02-28") 
  x-y
  x <- as.POSIXct("2012-10-25 01:00:00")     
   y <- as.POSIXct("2012-10-25 06:00:00", tz = "GMT") 
y-x 
