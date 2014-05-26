rm -f ~/installed_packages.txt
dpkg --get-selections > ~/installed_packages.txt
echo "linux package list backup packages apt dpkg"| mutt yek@kunzy.net -s "package list backup" -a "installed_packages.txt"
