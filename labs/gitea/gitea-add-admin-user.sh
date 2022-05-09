user="root"
email="root@code.tinkerit.vn"
gitea -c /etc/gitea/gitea.ini \
    admin user create \
    --username $user \
    --email $email \
    --password "1818craBB;" \
    --admin
