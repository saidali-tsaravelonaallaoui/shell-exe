if [ $# -ne 3 ]; then
  echo "Calcul: $0 <nombre1> <opération> <nombre2>"
  exit 1
fi

nombre1="$1"
operation="$2"
nombre2="$3"
resultat=0

if [ "$operation" == "+" ]; then
  resultat=$(echo "$nombre1 + $nombre2" | bc)
elif [ "$operation" == "-" ]; then
  resultat=$(echo "$nombre1 - $nombre2" | bc)
elif [ "$operation" == "x" ]; then
  resultat=$(echo "$nombre1 * $nombre2" | bc)
elif [ "$operation" == "/" ]; then
  if [ "$nombre2" -eq 0 ]; then
    echo "Erreur : Division par zéro impossible."
    exit 1
  fi
  resultat=$(echo "$nombre1 / $nombre2" | bc)
else
  echo "Opération non reconnue. Utilisez '+', '-', 'x' (multiplication), ou '/'(division)."
  exit 1
fi

echo "Résultat de $nombre1 $operation $nombre2 = $resultat"
