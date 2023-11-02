backup_dir="Backup"
mkdir -p "$backup_dir"
current_date=$(date +'%d-%m-%Y-%H:%M')
connection_count=$(last | head -n -2 )
file_name="number_connection-$current_date"
echo "$connection_count" > "$backup_dir/$file_name"
tar -czf "$backup_dir/$file_name.tar" "$backup_dir/$file_name"
