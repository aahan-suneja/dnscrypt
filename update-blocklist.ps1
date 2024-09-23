cd .\generate-domains-blocklist\
python .\generate-domains-blocklist.py -o ..\blocked-names.txt
cd ..
git add blocked-names.txt
$date = Get-Date -Format "yyyy-MM-dd"
git commit -m "Last updated: $date"
git push