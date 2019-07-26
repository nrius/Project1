all: README.md

README.md:
	touch README.md
	echo "# README" >README.md
	echo "### Project title: Bash, Make, Git and GitHub" >>README.md
	date >>README.md
	wc -l < guessinggame.sh >>README.md
