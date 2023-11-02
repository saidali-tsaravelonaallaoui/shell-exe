nouveau_fichier="$1"
fichier_source="$2"
cat "$fichier_source" > "$nouveau_fichier"
echo "Le contenu de '$fichier_source' a été copié avec succès dans '$nouveau_fichier'."
