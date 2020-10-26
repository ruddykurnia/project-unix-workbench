All:	gueesingame.sh readme.md

guessinggame.sh:
	bash guessinggame.sh

readme.md: guessinggame.sh
	echo "#Assignment: Bash, Makefile, Git and Github" >> readme.md
	echo "" >> readme.md
	echo "###Date" >> readme.md
	echo "" >> readme.md
	echo "$$(date)" >> readme.md 
	echo "" >> readme.md
	echo "###Number of lines:" >> readme.md
	echo "" >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md

clean:
	rm readme.md

