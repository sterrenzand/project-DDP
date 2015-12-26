library(shiny)
library(rCharts)

dt <- read.csv('Arrivals.csv', header = TRUE, na.strings = "N/A")
colnames(dt)<-c("date", "Greek.Islands","Greek.Mainland","Macedonia", "Serbia", "Croatia", "Hungary","Slovenia","Austria")

for (i in 2:9) {
        dt[,i]<- as.numeric(gsub(",", "", dt[,i])) #eliminate grouping commas
        }
dt[,1]<-as.Date(dt[,1],format="%m/%d/%Y") #format the date column

dt$dat<-as.numeric(as.POSIXct(dt$date))*1000 #converts date column into format that displays nicely

sumOfRefugees <- function(input1,input2,input3) {
        c1<-(dt$date<=input2)&(dt$date>=input1)
        
        if (input2<input1) {p<-"please make sure that your start date is before your end date"
        p}
        else {sum(dt[c1,input3],na.rm = TRUE)}
        }

shinyServer(
        function(input, output) {
                
                output$table <- renderDataTable({ dt[,c(-3,-10)] })
                output$plot <- renderChart2({
                         selection <- input$country
                         h1 <- hPlot(#selection ~ dat,
                                 x="dat",
                                 y=selection,
                                data = dt, 
                                type = "line")
                         h1$xAxis(type = 'datetime', 
                                 labels = list(
                                 format = '{value:%Y-%m-%d}',
                                 rotation = -45))
                         h1$yAxis(min= 0 ) # this sets minimum values of y to 0
                         h1$addParams(height = 400, width = 600)
                        h1
                        }) 
                output$sum <- renderPrint({sumOfRefugees(input$date1, input$date2, input$country)})
                output$country<-renderText({paste('Sum of refugees in ',input$country,'during the selected time period')})
        }
)