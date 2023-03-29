TASK1: To store the call center data, we can use a data frame with the following columns: Caller_Phone_Number (numeric), Caller_Name (character), Caller_Location (character), Call_Duration (numeric).

R
Copy code
call_center_data <- data.frame(Caller_Phone_Number = c(9041, 9888, 9646, 7777, 8899),
                               Caller_Name = c("ANIKET", "MANISHA", "RAMAN", "RAJNIKANT", ""),
                               Caller_Location = c("Delhi", "Chandigarh", "Delhi", "AP", ""),
                               Call_Duration = c(9, 15, 30, 0.33, 0))
TASK2: To add the attributes GENDER and PROBLEM PRIORTY, we can use the factor function to create columns with appropriate data type and levels.

R
Copy code
call_center_data$Gender <- factor(c("", "", "", "", ""), levels = c("Male", "Female", "Other"))
call_center_data$Problem_Priority <- factor(c("", "", "", "", ""), levels = c("Critical", "Normal", "Moderate"))
TASK3: To update the name of the 3rd caller, we can use the subset function to filter for the caller with phone number 9646 and update the name.

R
Copy code
call_center_data$Caller_Name[subset(call_center_data, Caller_Phone_Number == 9646)$Caller_Name == "RAMAN"] <- "DAMAN"
TASK4: To save the caller data with numbered names, we can use a for loop to create new data frames with numbered names.

R
Copy code
for (i in 1:nrow(call_center_data)) {
     assign(paste0("CALLER", i), call_center_data[i, ])
}