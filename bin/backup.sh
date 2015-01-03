cd
rm -f installed_packages.txt
rm -f backup.tar
dpkg --get-selections > installed_packages.txt
tar cf backup.tar installed_packages.txt
tar rf backup.tar code --exclude='code/android-sdk/*'
tar rf backup.tar projekte
tar rf backup.tar Dokumente
tar rf backup.tar Bitwig\ Studio
tar rf backup.tar dotfiles
gzip -f backup.tar
#echo "yek laptop backup"| mutt yek@kunzy.net -s "yek backup" -a "/home/yek/backup.tgz"
