# J. Carleton - Capstone project Shiny application
#
library(dplyr)
library(ggplot2)
library(shinythemes)
library(shiny)
library(readr)
library(stringr)
#
shinyUI(navbarPage("Coursera Data Science Capstone: Course Project",
                   #theme = shinytheme("united"),
                   #theme = shinytheme("yeti"),
                   theme = shinytheme("readable"),
    tabPanel("Predict the Next Word", HTML("<strong>Author: Jim Carleton</strong>"),
    br(),
    HTML("<strong>Date: July 18, 2019</strong>"),
    fluidRow(
        tags$style(type="text/css",
                   ".shiny-output-error { visibility: hidden; }",
                   ".shiny-output-error:before { visibility: hidden; }"
        ),
        column(3), column(6, tags$div(textInput("inputString",
                    label = h2("Enter text here:"),
                    value = ),
                    tags$span(style="color:grey",("Type some words (a partial phrase or sentence)")),
                    br(),
                    tags$hr(),
                    h2("Predicted next word:"),
                    tags$span(style="color:maroon",
                    tags$strong(tags$h3(textOutput("NextWord")))),
                    br(),
                    br(),
                    h3("The top five word choices:"),
                    plotOutput("barplot")),
                    align="center")
        )
    ),
    tabPanel("About",
             fluidRow(
                 column(2, p("")),
                 column(8, includeMarkdown("about.md"))
             )
    )

)
)
