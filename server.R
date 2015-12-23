library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    output$note1Image <- renderImage ({
        imagePath <- paste0("www/piano",input$note1, ".png")
        altText <- paste0(imagePath, " not found")

        # Return a list containing the filename
        list(src = imagePath,
             contentType = 'image/png',
             width = 188,
             height = 63,
             alt = altText)
    }, deleteFile = FALSE)

    output$note1Frequency <- renderText ({
        frequency <- getFrequency(as.integer(input$note1))
        paste(frequency, "Hz")
        })

    getFrequency <- function(n) { (2^(1/12))^(n-49) * 440 }

    output$note1Plot <- renderPlot({
        par(mar=c(5.1, 0, 0, 2.1))
        frequency <- getFrequency(as.integer(input$note1))
        x=seq(0,0.05,0.0001)
        y=sin(frequency * x)
        plot(x,y,type='l', xlab="seconds", ylab="", yaxt='n')
        }, width = "auto", height = "auto")
})
