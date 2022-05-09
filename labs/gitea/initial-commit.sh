for repo in amino micro-mini tinker-bom tinker-starter ulibgo; do
    cd ~/homework/$repo
    git remote set-url origin ssh://gitea@code.tinkerit.vn:2222/libs/${repo}.git
    git push origin -u master
done
