echo "======================="
echo "    Download ngrok     "
echo "======================="
wget -O ngrok.tgz https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1
tar xvzf ngrok.tgz > /dev/null 2>&1
read -p "Paste Ngrok Authtoken: " xsxlzx
./ngrok authtoken $xsxlzx
