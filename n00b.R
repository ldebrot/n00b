
# Set correct working directory
source("n00b.R", chdir = TRUE)
setwd("C:/Users/Lucien/OneDrive/HARDDRIVE/LDS/NotAnEngineer/n00b")

# Install knitr if necessary
list.of.packages <- c("knitr")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
library(knitr)
par(mfrow=c(1,1))

# Define actual n00b function
n00b <- function(functionname) {
    # Define name of helpfile based on provided function name
    n00b_filename <- paste(functionname,".Rmd", sep="")
    n00b_htmlfilename <- paste(functionname,".html", sep="")
    # Knit helpfile if it exists
    if (file.exists(n00b_filename)) {
        knit(input=n00b_filename)
        viewer <- getOption("viewer")
        viewer(n00b_htmlfilename)
    } else {
        print(paste("ERR01 - Could not find an example for the function '",functionname,"'",sep=""))
    }
}

