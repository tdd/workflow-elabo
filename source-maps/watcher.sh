#! /bin/bash

coffee -cmw demo.coffee &
scss --watch --sourcemap demo.scss:demo.css 2> /dev/null &
echo 'Watching Coffee and SCSS the bare-bones way… Press Return to kill watchers.'
read
ps | grep -Ei 'coffee|scss' | xargs kill 2> /dev/null
echo 'There, killed the watchers.'

# Sur Windows : les deux premières lignes, sans le '&' final,
# dans 2 invites de commande séparées
