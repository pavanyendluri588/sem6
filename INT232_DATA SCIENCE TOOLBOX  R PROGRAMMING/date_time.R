# create a date
x<-as.Date("2017-01-30")
# specify the format
y<-as.Date("05/30/2017", format = "%m/%d/%Y")
x
y


# take a difference
Sys.Date() - as.Date("2020-01-03")

# alternate method with specified units
difftime(Sys.Date(), as.Date("2020-01-03"), units = "hours")
dts=x
weekdays(dts)
months(dts)

quarters(dts)
quarters(x)

