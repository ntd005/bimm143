#Class 5
#Data Visualization and graphs in R

plot(1:10, col="blue", typ="o")

#Need to import/read input data first
baby <- read.table("bimm143_05_rstats/weight_chart.txt")
baby <- read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE)

#basic plot of age and weight
plot(baby$Age, baby$Weight)
plot(baby$Age, baby$Weight, col="blue", type = "o", pch = 15, cex = 1.5
     , lwd = 2, ylim = c(2,10), xlab = "Age(months)"
     , ylab = "Weight(kg)", main = "Baby weight with age" )

#silly example of 'pch' plot character and 'cex' size
plot(1:5, cex=1:5, pch=1:5)

#Next example mouse genomic features
mouse <- read.table("bimm143_05_rstats/feature_counts.txt", 
                    sep = "\t", header = TRUE)

par(mar=c(5,11,2,1))
barplot(mouse$Count, horiz = TRUE, col = "lightgreen",
        names.arg = mouse$Feature, las=1)

par(mar=c(5,4,2,2))
plot(1:10)
