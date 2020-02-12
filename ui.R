library(shiny)
shinyUI(
  fluidPage(
    titlePanel("Air Quality Dataset"),
    sidebarLayout(
      sidebarPanel(
        radioButtons("p", "select column of air-quality dataset:",
                     list("airquality.Ozone"='a', "airquality.Temp"='b')),
        sliderInput("bins", "Number of bins:", min = 1, max = 50, value = 30)
      ),
      mainPanel(
        plotOutput("distPlot")
      )
    )
  )
)