% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/proxies.R
\name{e_showtip_p}
\alias{e_showtip_p}
\alias{e_hidetip_p}
\title{Tooltip Proxy}
\usage{
e_showtip_p(proxy, position = c(10, 10), series.index = NULL, name = NULL)

e_hidetip_p(proxy)
}
\arguments{
\item{proxy}{An echarts4r proxy as returned by \code{\link{echarts4rProxy}}.}

\item{position}{Tooltip position.

 @examples 
 if(interactive()){
   library(shiny)
 
   ui <- fluidPage(
     fluidRow(
       actionButton("show", "Show tooltip"),
       actionButton("hide", "Hide tooltip")
     ),
     fluidRow(
       echarts4rOutput("plot")
     )
   )
   
   server <- function(input, output, session){
     output$plot <- renderEcharts4r({
       mtcars %>% 
         e_charts(mpg) %>% 
         e_line(disp) %>% 
         e_x_axis(min = 10) %>% 
         e_theme("westeros") 
     })
     
     observeEvent(input$show, {
       echarts4rProxy("plot") %>% 
         e_showtip_p(0)
     })
     
     observeEvent(input$hide, {
       echarts4rProxy("plot") %>% 
         e_hidetip_p()
     })
   }
   
   shinyApp(ui, server)
 }}

\item{series.index}{Index of serie.}

\item{name}{Name of serie.}
}
\description{
Proxies to show or hide tooltip.
}
