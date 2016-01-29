
for md_file in $(cat md_files | sed -e 's/\.md$//g')
do
	markdown $md_file.md -o html4 -f html/$md_file.html
done
