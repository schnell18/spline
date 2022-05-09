for repo in amino micro-mini tinker-bom tinker-starter ulibgo; do
cat<<EOF | bash
echo "Transfer $repo to libs ..."
curl -XPOST http://code.tinkerit.vn/api/v1/repos/schnell18/$repo/transfer \
     -H 'Content-Type: application/json' \
     -H 'Authorization: token f4d2cc149719160fbf0d6d4dfa0eaae3af5b37b3' \
     -d'
{
  "new_owner": "libs"
}
'
EOF
done
