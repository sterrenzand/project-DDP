library(shiny)
library(rCharts)

shinyUI(pageWithSidebar(
        headerPanel("Refugees in Europe along the Balkans Route"),
        sidebarPanel(
                h4('See how many refugees arrived in European Countries along the Western Balkans Route'),
                br(),
                radioButtons(inputId = "country", 
                        label = "Select a country:", 
                        choices = c("Greek.Islands","Macedonia", "Serbia", "Croatia", "Hungary","Slovenia","Austria"), 
                        selected = "Greek.Islands"
                        ), 
                br(),
                h4("Calculate the total of refugees arrived in the selected country during the timespan"),
                dateInput("date1",
                        label = "begin date:",
                        min = "2015-10-01",
                        max = "2015-12-20",
                        value = "2015-10-01", 
                        format = "yyyy-mm-dd"),
                dateInput("date2",
                          label = "end date:",
                          min = "2015-10-01",
                          max = "2015-12-20",
                          value = "2015-12-20", 
                          format = "yyyy-mm-dd"),
                br(),
                p("The plot shows the number of refugees arrived in the selected country. You can hover 
                   over the line to get exact values. To explore the raw data please click on the 
                   Raw Data tab. In the Documentation tab you find infomation on the data and how the 
                   app works. The source code and all other files can be found 
                   ", tags$a(href="https://github.com/sterrenzand/project-DDP", "here on github."), 
                  "Please also have a look at the", tags$a(href="https://sterrenzand.github.io/project-DDP/index.html#3",  
                  "slidify presentation")," for this project.")
        ),
        mainPanel(
                h3('Estimated daily arrivals of refugees'),
                tabsetPanel(
                        tabPanel("Plot", showOutput("plot", "highcharts"),h3(textOutput('country')),
                                                 verbatimTextOutput("sum")),
                        tabPanel("Raw Data", dataTableOutput("table")),
                        tabPanel("Documentation", 
                                h4("Background"),
                                p("During October through December of 2015 there has been a great number 
                                of people fleeing their home countries because of war and poverty. Many 
                                of the refugees arrive in Europe after crossing the Mediterranean Sea 
                                and travel along the so-called Balkans Route through various countries 
                                in Europe, often with northern European countries like Austria, Germany 
                                or Scandinavian countries as final destinations. The UNHCR, the United 
                                Nations Refugee Agency, is following the ongoing humanitarian crisis 
                                and makes data on estimates of refugees arriving at European borders 
                                available. "),
                                br(),
                                h4("Data"),
                                p(" The data used by this app 
                                has been downloaded from this", 
                                tags$a(href="http://data.unhcr.org/mediterranean/country.php?id=502",
                                "UNHCR website"),"(http://data.unhcr.org/mediterranean/country.php?id=502) 
                                and converted from the .xlsx format into a .csv file. 
                                You can have a look at the data by clicking on the Raw Data tab.Data 
                                was available from October 1, 2015 till December 20, 2015"),
                                br(),
                                h4("How the App works"),
                                p("Please select a country using the buttons in the left side panel. 
                                The plot for the number of refugees that arrived in this country is 
                                displayed in the graph on the tab named Plot. On the x axis we have 
                                the date and on the y axis the number of refugees. If you hover your 
                                cursor over the line in the plot detailed data is displayed."),
                                br(),
                                p("To calculate the total of refugees that have arrived in the selected 
                                country: Please select a begin date and end date via the calender input 
                                fields in the left side panel. For the calculation to be meaningful, 
                                the begin date should be earlier than your end date. The result will 
                                be displayed under the graph in the Plot panel."),
                                br(),
                                h4("Other resources"),
                                p("The source code and all other files can be found 
                                ", tags$a(href="https://github.com/sterrenzand/project-DDP", "here 
                                on github."), 
                                "Please also have a look at the", 
                                tags$a(href="https://sterrenzand.github.io/project-DDP/index.html#3",  
                                "slidify presentation")," for this project.")
                                
                                )
                        )
        )
))