#set.seed(1)

equi_width_binning = function(input, no_of_bins){
#Equi width binning
bins<-no_of_bins #10
minimumVal<-min(input, na.rm=TRUE)
minimumVal
maximumVal<-max(input, na.rm=TRUE)
maximumVal
width=(maximumVal-minimumVal)/bins;
width
bins <- cut(input, breaks=seq(minimumVal, maximumVal, width))
#browser()
bins
}
