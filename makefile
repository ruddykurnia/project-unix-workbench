All:	gueesingame.sh README.md

guessinggame.sh:
	bash guessinggame.sh

README.md: guessinggame.sh
	echo "#Assignment: Bash, Makefile, Git and Github" >> README.md
	echo "" >> README.md
	echo "###Date" >> README.md
	echo "" >> README.md
	echo "$$(date)" >> README.md 
	echo "" >> README.md
	echo "###Number of lines:" >> README.md
	echo "" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md

