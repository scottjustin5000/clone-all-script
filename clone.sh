ORGANIZATION=YOUORG
for i in `curl   -s https://api.github.com/orgs/$ORGANIZATION/repos?per_page=100 |grep html_url|awk 'NR%2 == 0'|cut -d ':'  -f 2-3|tr -d '",'`; do  git clone $i.git;  done