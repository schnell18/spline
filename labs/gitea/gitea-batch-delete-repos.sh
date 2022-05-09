for repo in euclid fourier gauss haydn leibniz monet poincare riemann verdi; do
cat<<EOF | bash
echo "Deleting repository for $repo ..."
curl -XDELETE http://code.tinkerit.vn/api/v1/repos/schnell18/$repo \
     -H 'Content-Type: application/json' \
     -H 'Authorization: token f4d2cc149719160fbf0d6d4dfa0eaae3af5b37b3'
EOF
done
