file="root/scripts/grouplist.txt"
while IFS= read -r group
do
	groupadd group
done <"$file"	