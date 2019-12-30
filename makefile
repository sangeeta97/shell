README.md: guessinggame.sh
	echo "The title is for linuxprogram to guess the number of files in directory is guessinggame" > README.md
	echo "             " >> README.md
	echo -n "The number of lines in the program is " >> README.md
	
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "             " >> README.md
	echo -n "today is " >> README.md
	date >> README.md
