All:	gueesingame.sh readme.md

guessinggame.sh:
	bash guessinggame.sh

readme.md: guessinggame.sh
	echo "Assignment: Bash, Makefile, Git and Github" >> readme.md
	echo "$$(date)" >> readme.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md

clean:
	rm readme.md

