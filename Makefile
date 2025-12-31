all: README.md

README.md: guessinggame.sh
	echo "# Jeu de Devinette" > README.md
	echo "" >> README.md
	echo "**Date :** $$(date)" >> README.md
	echo "" >> README.md
	echo "**Lignes de code :** $$(wc -l < guessinggame.sh)" >> README.md
	echo "" >> README.md
	echo "## Description" >> README.md
	echo "Devine le nombre de fichiers !" >> README.md

clean:
	rm -f README.md
