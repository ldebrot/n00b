n00b_plot <- function(populations=0,population="a",x=0,colour="red",mean_a=0,sd_a=1,n_a=1000,mean_b=0,sd_b=1,n_b=1000) {

if (!populations %in% c(1,2)) {
        return("0 populations - 0 plots")
}   else (populations==1) {
    #Generate our test distribution
    test_pop <- rnorm(n=n_a,mean=mean_a,sd=sd_a)
    
    #A nicely colored plot to illustrate what dnorm is doing
    h <- hist(test_pop, breaks=n_a/10, plot = FALSE)
    bin <- cut(x, h$breaks)
    clr <- rep("white", length(h$counts))
    clr[bin] <- colour
    plot(h, col=clr)
    
}   else (populations==2) {

}
        
### End of n00b_plot function
}