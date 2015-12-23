library(shiny)

shinyUI(fluidPage(
    titlePanel("Developing Data Products - Course Project"),
    hr(),
    sidebarLayout(
        sidebarPanel(
            radioButtons("note1", label = h4("Choose A Note"),
                choices = list("A''" = 61,
                               "G#'" = 60,
                               "G'" = 59,
                               "F#'" = 58,
                               "F'" = 57,
                               "E'" = 56,
                               "D#'" = 55,
                               "D'" = 54,
                               "C#'" = 53,
                               "C'" = 52,
                               "B'" = 51,
                               "A#'" = 50,
                               "A'" = 49)
                ,selected = 49)
            ,width=3),

        mainPanel(
            h4("Frequency: "),
            textOutput("note1Frequency"),
            br(),

            h4("Piano Key: "),
            imageOutput("note1Image", width = 188, height = 63),
            br(),

            h4("Sine Wave: "),
            plotOutput("note1Plot", width=400, height=250),
            br(),

            p("Reference: ", a(href="https://en.wikipedia.org/wiki/Piano_key_frequencies", "Wikipedia"))
        )
    )
))