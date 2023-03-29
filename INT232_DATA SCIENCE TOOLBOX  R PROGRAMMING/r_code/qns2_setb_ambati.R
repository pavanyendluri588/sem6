Q3a) To filter the volume having diameter more than 12 and height more than 69 ft from the trees dataset using subset:
     
     R
Copy code
filtered_trees <- subset(trees, Height > 69 & Girth > 12)
Q3b) To filter the volume having diameter more than 12 and height more than 69 ft from the trees dataset using dplyr:
     
     R
Copy code
library(dplyr)

filtered_trees <- filter(trees, Height > 69, Girth > 12)
Q3c) To filter the volume having diameter more than 12 and height more than 69 ft from the trees dataset using SQL select query:
     
     R
Copy code
library(sqldf)

filtered_trees <- sqldf("SELECT * FROM trees WHERE Height > 69 AND Girth > 12")



