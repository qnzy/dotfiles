rm -f ~/installed_packages.txt ~/backup.tgz
dpkg --get-selections > ~/installed_packages.txt
tar czf /home/yek/backup.tgz installed_packages.txt code bin projects Dokumente schemlib.fig .emacs --exclude-backups
echo "yek laptop backup"| mutt yek@kunzy.net -s "yek backup" -a "/home/yek/backup.tgz"