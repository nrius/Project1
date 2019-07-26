all: README.md

README.md:
	touch README.md
	echo "# README" >README.md
	echo "### Project title: Bash, Make, Git and GitHub" >>README.md
	echo "Make done on: " >>README.md
	date >>README.md
	echo "Number of lines on guessinggame.sh:  " >>README.md
	wc -l < guessinggame.sh >>README.md
