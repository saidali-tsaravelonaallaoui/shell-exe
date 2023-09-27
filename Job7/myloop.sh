compteur=1
while [ $compteur -le 10 ]; do
  if [ $compteur -eq 1 ]; then
    echo "Je suis un script qui arrive à faire une boucle $compteur"
  elif [ $compteur -eq 2 ]; then
    echo "Je suis un script qui arrive à faire une boucle $compteur"
  elif [ $compteur -eq 3 ]; then
    echo "Je suis un script qui arrive à faire une boucle $compteur"
  elif [ $compteur -eq 4 ]; then
    echo "Je suis un script qui arrive à faire une boucle $compteur"
  elif [ $compteur -eq 5 ]; then
    echo "Je suis un script qui arrive à faire une boucle $compteur"
  elif [ $compteur -eq 6 ]; then
    echo "Je suis un script qui arrive à faire une boucle $compteur"
  elif [ $compteur -eq 7 ]; then
    echo "Je suis un script qui arrive à faire une boucle $compteur"
  elif [ $compteur -eq 8 ]; then
    echo "Je suis un script qui arrive à faire une boucle $compteur"
  elif [ $compteur -eq 9 ]; then
    echo "Je suis un script qui arrive à faire une boucle $compteur"
  else
    echo "Je suis un script qui arrive à faire une boucle $compteur"
  fi
  compteur=$((compteur+1))
done
