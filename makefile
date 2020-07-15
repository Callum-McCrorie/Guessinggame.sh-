#The title of the project.
#The date and time at which make was run.
#The number of lines of code contained in guessinggame.sh.

  
now=`date '+%Y-%m-%d %H:%M:%S'`
 
 
target1: clear
	touch README.md


	

	echo "Title: Guessing game" >> README.md


	echo "The date and time is: $(now)" >> README.md

	echo "The number of lines of code in guessinggame.sh is: `wc -l guessinggame.sh | egrep -o "[0-9]+"`"     >> README.md

clear:
	rm -f README.md