library(ggplot2)
library(reshape2)

options(echo=TRUE)
args<-commandArgs(trailingOnly=TRUE)

#print(args[1])
#print(args[2])

graphs<-read.csv(file=args[1])
graphs_low<-graphs[1:10,]
graphs_high<-graphs[11:20,]
print("here")
input_low<-melt(graphs_low, id=c("Capacity.Range"))
print("here")
input_high<-melt(graphs_high, id=c("Capacity.Range"))
low_plot<-ggplot(input_low,aes(x=Capacity.Range,y=value))+geom_line(aes(colour=variable,group=variable))+xlab("Capacity Range")+ylab("Runtime (s)")+ggtitle(paste("Runtime of Max Flow Algorithm vs. Capacity Range (",args[2]," low)",sep=""))+theme(text = element_text(size=10),
        axis.text.x = element_text(angle=90, vjust=1))
high_plot<-ggplot(input_high,aes(x=Capacity.Range,y=value))+geom_line(aes(colour=variable,group=variable))+xlab("Capacity Range")+ylab("Runtime (s)")+ggtitle(paste("Runtime of Max Flow Algorithm vs. Capacity Range (",args[2]," high)",sep=""))+theme(text = element_text(size=10),
        axis.text.x = element_text(angle=90, vjust=1))

ggsave(filename=paste(args[2],"_low.png",sep=""), low_plot)
ggsave(filename=paste(args[2],"_high.png",sep=""), high_plot)