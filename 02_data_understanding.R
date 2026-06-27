str(hr)

dim(hr)

names(hr)

summary(hr)

table(hr$Attrition)

barplot(table(hr$Attrition),
        main = "Employee Attrition",
        xlab = "Attrition",
        ylab = "Number of Employees")

png("outputs/figures/attrition_barplot.png",
    width = 800,
    height = 600)

barplot(table(hr$Attrition),
        main = "Employee Attrition",
        xlab = "Attrition",
        ylab = "Number of Employees")

dev.off()