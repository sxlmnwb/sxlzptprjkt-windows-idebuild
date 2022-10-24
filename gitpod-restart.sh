#! /bin/bash
#
# // Copyright (C) 2022 Salman Wahib (sxlmnwb)
#    Tested By Ubuntu 20.04 LTS
#    Souce By LINGGAHOSTING (Aank)
#    NEED PRIVILEGE ACCESS root:x:0:0:root:/root:/bin/bash
#
echo ""
echo "[!] RESTART WINDOWS SERVER 2012 R2 Datacenter Evaluation"
./ngrok tcp 3388 &>/dev/null &
echo "[+] STARTING qemu-system-x86"
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
root@sxlzptprjkt:~# ./w00t?????????? --restart
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