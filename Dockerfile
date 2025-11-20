FROM rocker/shiny:latest

# add R packages that need to be installed here
RUN R -e "install.packages(c('dplyr', 'ggplot2', 'ggExtra', 'readr', 'curl'))"

# Change the port depending which port you want to use
WORKDIR /home/app
COPY app .

# Expose the application port specified in app.R file
EXPOSE 8180

# Run the R Shiny app
CMD Rscript app.R