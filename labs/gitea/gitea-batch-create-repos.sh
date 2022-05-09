for repo in euclid fourier gauss haydn leibniz monet poincare riemann verdi; do
cat<<EOF | bash
echo "Creating repository for $repo ..."
curl -XPOST http://code.tinkerit.vn/api/v1/user/repos \
     -H 'Content-Type: application/json' \
     -H 'Authorization: token f4d2cc149719160fbf0d6d4dfa0eaae3af5b37b3' \
     -d'
{
  "auto_init": false,
  "default_branch": "master",
  "description": "",
  "license": "MIT",
  "name": "$repo",
  "private": false,
  "trust_model": "default"
}
'
EOF
done
