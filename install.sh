apt-get -y install -qq wget
wget -qq https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -q -y ./google-chrome-stable_current_amd64.deb
sed -i '$ d' /opt/google/chrome/google-chrome
echo 'exec -a "$0" "$HERE/chrome" "$@" --no-sandbox' >> /opt/google/chrome/google-chrome
echo
echo "The repository is in '/etc/apt/sources.list.d/google-chrome.list'"
echo "For openning Google Chrome on terminal, use: 'google-chrome-stable'"
echo
echo "Do you want create a uninstall shortcut? "
echo "(1) YES"
echo "(ANYTHING) NO"
read -p "Your choice: " QUESTION
case $QUESTION in
1)
touch uninstall-google-chrome
chmod +x uninstall-google-chrome
echo "apt-get remove -y google-chrome-stable" > uninstall-google-chrome
mv uninstall-google-chrome /usr/local/bin/
echo "Just run 'uninstall-google-chrome' to uninstall Google Chrome."
exit
;;
*)
exit
;;
esac
