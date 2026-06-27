library(shiny)

hr <- read.csv("data/raw/WA_Fn-UseC_-HR-Employee-Attrition.csv")
names(hr)[1] <- "Age"

ui <- fluidPage(
  
  titlePanel("Employee Attrition Prediction and HR Analytics Dashboard"),
  
  sidebarLayout(
    
    sidebarPanel(
      
      h3("HR Summary"),
      
      p(paste("Total Employees:", nrow(hr))),
      p(paste("Employees Left:", sum(hr$Attrition == "Yes"))),
      p(paste("Employees Stayed:", sum(hr$Attrition == "No")))
      
    ),
    
    mainPanel(
      
      plotOutput("attritionPlot"),
      
      br(),
      
      plotOutput("overtimePlot"),
      
      br(),
      
      plotOutput("jobSatPlot")
      
    )
  )
)

server <- function(input, output) {
  
  output$attritionPlot <- renderPlot({
    
    barplot(table(hr$Attrition),
            main = "Employee Attrition Distribution",
            xlab = "Attrition",
            ylab = "Number of Employees")
    
  })
  
  output$overtimePlot <- renderPlot({
    
    barplot(table(hr$OverTime,
                  hr$Attrition),
            beside = TRUE,
            legend = TRUE,
            main = "OverTime vs Attrition",
            xlab = "OverTime",
            ylab = "Number of Employees")
    
  })
  
  output$jobSatPlot <- renderPlot({
    
    barplot(table(hr$JobSatisfaction,
                  hr$Attrition),
            beside = TRUE,
            legend = TRUE,
            main = "Job Satisfaction vs Attrition",
            xlab = "Job Satisfaction",
            ylab = "Number of Employees")
    
  })
  
}

shinyApp(ui = ui, server = server)