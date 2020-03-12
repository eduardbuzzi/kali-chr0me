sudo apt -y install -qq wget
wget -qq https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -q -y ./google-chrome-stable_current_amd64.deb
echo
echo "The repository is in '/etc/apt/sources.list.d/google-chrome.list'"
echo "For openning Google Chrome on terminal, use: 'google-chrome-stable'"
echo
echo "Do you want update and upgrade system? "
echo "(0) NO"
echo "(1) YES"
read -p "Your choice: " QUESTION
while [ $QUESTION -ne '0' ] && [ $QUESTION -ne '1' ]
do
echo "Do you want update and upgrade system? "
echo "(0) NO"
echo "(1) YES"
read -p "Your choice: " QUESTION
done
case QUESTION in
0)
exit
;;
1)
sudo apt -y update
sudo apt -y upgrade
exit
;;
esac
