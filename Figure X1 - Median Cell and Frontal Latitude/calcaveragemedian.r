#A script to load in the output from the calcmedian.jnl script. 
# All files are in the ferretoutput directory in the format
# YYYY-mediancells-AREA.csv (They aren't csv files though...) All files
# have the same width but not necessarily the same length. 

#Make variables
years = seq(2003,2014,1)
mediancells = matrix(data=NA,nrow=12,ncol=2)

for (year in years) {
	#STFZ first
	filename = paste('ferretoutput/',year,'mediancells-STFZ.csv',sep='')
	a = read.table(filename,na.strings='....')
	
	#Now TZCF
	filename = paste('ferretoutput/',year,'mediancells-TZCF.csv',sep='')
	b = read.table(filename,na.strings='....')
	
	i = year - 2002
	mediancells[i,1] = mean(as.matrix(a),na.rm=T)
	mediancells[i,2] = mean(as.matrix(b),na.rm=T)
}

#plot(years, mediancells[,1], pch=21,bg='grey',xlab='Year',ylab='Median cell size (uM)')

#I copied this data over to marchpositions.xlsx and then made a file MarchFrontsMedCell.csv

