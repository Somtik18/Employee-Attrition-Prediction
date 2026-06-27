hr <- read.csv("data/raw/WA_Fn-UseC_-HR-Employee-Attrition.csv")

table(hr$JobSatisfaction, hr$Attrition)

barplot(table(hr$JobSatisfaction, hr$Attrition),
        beside = TRUE,
        legend = TRUE,
        main = "Job Satisfaction vs Attrition",
        xlab = "Job Satisfaction Level",
        ylab = "Number of Employees")

png("outputs/figures/job_satisfaction_attrition.png",
    width = 800,
    height = 600)

barplot(table(hr$JobSatisfaction, hr$Attrition),
        beside = TRUE,
        legend = TRUE,
        main = "Job Satisfaction vs Attrition",
        xlab = "Job Satisfaction Level",
        ylab = "Number of Employees")

dev.off()