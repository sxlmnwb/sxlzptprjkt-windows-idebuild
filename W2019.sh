#! /bin/bash
#Souce By LINGGAHOSTING
sudo apt-get update -y
rm -rf W2019-aank W2019.img W2019.gz ng.sh ngrok ngrok.tgz > /dev/null 2>&1
echo "Download windows files"
wget -O W2019.gz https://go.aank.me/win/W2019-aank.gz
gunzip W2019.gz
echo "Wait..."
mv W2019-aank W2019.img
wget -O ng.sh  > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "======================="
echo "  Choose ngrok region  "
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " xsxlzx
./ngrok tcp --region $xsxlzx 3388 &>/dev/null &
clear
echo Downloading files from go.aank.me
sudo apt-get install qemu-system-x86 -y
echo "Wait..."
echo "Starting Windows"
qemu-system-x86_64 -hda W2019.img -m 16G -smp cores=8 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
clear
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Username: Administrator"
echo "Password: Lingg@H0sting"
echo "===================================="
b='\033[1m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'
# Branding

printf """$c$b
 
root@sxlzptprjkt:~# w00t ?
          
$endc$enda""";
sleep 43200
