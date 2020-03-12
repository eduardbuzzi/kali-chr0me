sudo apt -y install -qq wget
wget -qq https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -q -y ./google-chrome-stable_current_amd64.deb
echo
echo "The repository is in '/etc/apt/sources.list.d/google-chrome.list'"
echo "For openning Google Chrome on terminal, use: 'google-chrome-stable'"
echo
read -p "Do you want update and upgrade system? " QUESTION
echo "(0) NO"
echo "(1) YES"
case QUESTION in
0)
exit
;;
1)
sudo apt update
sudo apt upgrade
exit
;;
esac
