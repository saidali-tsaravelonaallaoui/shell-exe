csv_file="/home/goldroger/shell-exe/Job9/test.csv"
log_file="$(dirname "$csv_file")/user_creation.log"

last_modification=$(stat -c %Y "$csv_file")
previous_modification=$(cat "$log_file" 2>/dev/null)

if [ -z "$previous_modification" ] || [ "$last_modification" -gt "$previous_modification" ]; then
    rm -f "$log_file"

    read -r header < "$csv_file"

    while IFS=',' read -r _ Role Prenom Nom Mdp; do
        Role=$(echo "$Role" | tr -d '[:space:]')
        Prenom=$(echo "$Prenom" | tr -d '[:space:]')
        Nom=$(echo "$Nom" | tr -d '[:space:]')
        Mdp=$(echo "$Mdp" | tr -d '[:space:]')

        if [ -n "$Role" ] && [ -n "$Prenom" ] && [ -n "$Nom" ] && [ -n "$Mdp" ]; then
            sudo useradd -c "$Prenom $Nom" -m -s /bin/bash "$Prenom$Nom"
            echo "$Prenom$Nom:$Mdp" | sudo chpasswd
            if [ "$Role" == "Admin" ]; then
                sudo usermod -aG sudo "$Prenom$Nom"
            fi
        fi
    done < <(tail -n +2 "$csv_file")

    echo "$last_modification" > "$log_file"
fi

