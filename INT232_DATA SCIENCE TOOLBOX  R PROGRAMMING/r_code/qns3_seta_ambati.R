# Create data frames for patient biodata, medical history, and parent's medical history
patient_biodata <- data.frame(
     patient_id = c("P101", "P105"),
     patient_name = c("John Doe", "Jane Smith"),
     patient_gender = c("Male", "Female"),
     patient_age = c(35, 45),
     patient_job = c("Engineer", "Doctor"),
     patient_job_hours = c(40, 50)
)

patient_medical_history <- data.frame(
     patient_id = c("P101", "P105"),
     blood_group = c("A+", "B-"),
     blood_sugar_level = c(120, 100),
     blood_pressure = c("120/80", "130/90"),
     heart_beat = c(72, 80),
     esi = c("No", "Yes"),
     rbc_count = c(4.5, 4.8),
     wbc_count = c(7000, 8000)
)

parents_medical_history <- data.frame(
     patient_id = c("P101", "P105"),
     father_name = c("John Doe Sr.", "James Smith"),
     blood_group = c("A+", "B+"),
     avg_blood_sugar = c(110, 90),
     avg_blood_pressure = c("130/80", "140/90")
)

# Create a list to store the patient data frames
patient_data <- list(
     patient_biodata = patient_biodata,
     patient_medical_history = patient_medical_history,
     parents_medical_history = parents_medical_history
)

# Access patient data for P101
patient_data$patient_biodata[patient_data$patient_biodata$patient_id == "P101",]
patient_data$patient_medical_history[patient_data$patient_medical_history$patient_id == "P101",]
patient_data$parents_medical_history[patient_data$parents_medical_history$patient_id == "P101",]

# Access patient data for P105
patient_data$patient_biodata[patient_data$patient_biodata$patient_id == "P105",]
patient_data$patient_medical_history[patient_data$patient_medical_history$patient_id == "P105",]
patient_data$parents_medical_history[patient_data$parents_medical_history$patient_id == "P105",]

