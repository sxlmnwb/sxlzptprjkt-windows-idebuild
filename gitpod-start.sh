#! /bin/bash
#
# // Copyright (C) 2022 Salman Wahib (sxlmnwb)
#    Tested By Ubuntu 20.04 LTS
#    Souce By LINGGAHOSTING (Aank)
#    NEED PRIVILEGE ACCESS root:x:0:0:root:/root:/bin/bash
#
sudo rm -rf W2012 W2012.img W2012.gz ngrok ngrok.tgz > /dev/null 2>&1
apt-get update -y
apt-get upgrade -y
apt-get install gunzip -y
apt-get install wget -y
clear
echo "[+] DOWNLOADING WINDOWS SERVER 2012 R2 Datacenter Evaluation"
echo ""
wget -O W2012.gz https://go.aank.me/win/W2012-aank.gz
gunzip W2012.gz
mv W2012 W2012.img
echo "[!] PASTE YOUR NGROK AUTHTOKEN"
echo ""
wget -O ngrok.tgz https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1
tar xvzf ngrok.tgz > /dev/null 2>&1
read -p "root@sxlzptprjkt:~# " xsxlzxauth
./ngrok authtoken $xsxlzxauth
echo ""
echo "[!] CHOOSE NGROK REGION"
echo ""
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
echo ""
echo "Example type [ap] for Asia/Pacific (Singapore)"
echo ""
read -p "root@sxlzptprjkt:~# " xsxlzxregion
./ngrok tcp --region $xsxlzxregion 3388 &>/dev/null &
clear
echo "[+] INSTALLING qemu-system-x86"
echo ""
apt-get install qemu-system-x86 -y
#DONT USE qemu-system-x86_64 -hda W2012.img -m 128G -smp cores=64 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
#DEFAULT USE GITPOD vvv
qemu-system-x86_64 -hda W2012.img -m 16G -smp cores=8 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
#DEFAULT USE GITPOD ^^^
b='\033[1m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'
printf """$c$r
root@sxlzptprjkt:~# ./w00t??????????
[-] GETTING INFORMATION
[+] qemu-system-x86_64 OKE
[+] PORT 3388 OPEN
[!] USERNAME : Administrator
[!] PASSWORD : Lingg@H0sting
[!] DON'T EXIT THIS RDP RUNNING 30 DAYS
[!] REMOTE DEKSTOP ADDRESS
$endc$enda""";
printf """$c$r
[!] LOADING .
$endc$enda""";
sleep 1
printf """$c$r
[!] LOADING ...
$endc$enda""";
sleep 1
printf """$c$r
[!] LOADING .....
$endc$enda""";
sleep 1
echo ""
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
printf """$c$r
[!] FOR EXIT HOLD CTRL+C
$endc$enda""";
sleep 3000000
