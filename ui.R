library(shiny)

shinyUI(fluidPage(

  titlePanel("Car Data Visualizer"),
   
  sidebarLayout(
    sidebarPanel(
       selectInput("variablex",
                   "Variable x:",
                   names(mtcars)),

       selectInput("variabley",
                   "Variable y:",
                   names(mtcars)),
       
       selectInput("groupby",
                   "Color By:",
                   c("cyl", "vs", "gear", "carb", "am")),

       
       h4("Info on variables"),
       tags$div(
         tags$ul(
           tags$li("mpg	Miles/(US) gallon"),
           tags$li("disp	Displacement (cu.in.)"),
           tags$li("hp	Gross horsepower"),
           tags$li("drat	Rear axle ratio"),
           tags$li("wt	Weight (1000 lbs)"),
           tags$li("qsec	1/4 mile time"),
           tags$li("vs	Engine (0 = V-shaped, 1 = straight)"),
           tags$li("am	Transmission (0 = automatic, 1 = manual)"),
           tags$li("gear	Number of forward gears"),
           tags$li("carb	Number of carburetors")
         )
       )
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("carPlot"),
       h4("Quick start"),
       p("Select variable x and variable y which will be used as the axes on the plot."),
       p("You can use the Color By field to group the data on the plot by color."),
       p("The data is based on mtcars which is present in R; attribute information is listed in the left panel.")
     )
  )
))
