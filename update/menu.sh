#!/bin/bash
clear
# pewarna hidup
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
Blue='\e[1;34m'
NC='\e[0m'
# get info menu
MYIP=$(curl -sS ifconfig.me)
LOC=$(curl -sS ifconfig.co/country)
Domen="$(cat /etc/xray/domain)"
# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))
# GETTING OS INFORMATION
source /etc/os-release
Tipe=$NAME
clear
echo -e "$y-------------------------------------------------$wh"
echo -e " \e[1;34mPublic IP   \e[0m: $MYIP"
echo -e " \e[1;34mCountry     \e[0m: $LOC"
echo -e " \e[1;34mOS Name     \e[0m: $Tipe"
echo -e " \e[1;34mTotal RAM   \e[0m: ${totalram}MB"
echo -e " \e[1;34mDomain      \e[0m: $Domen"
echo -e "$y-------------------------------------------------$wh"
echo -e "$y                     MENU  $wh"
echo -e "$y-------------------------------------------------$wh"
echo -e "$yy 1$y.  SSH & OpenVPN MENU  $wh"
echo -e "$yy 2$y.  L2TP MENU$wh"
echo -e "$yy 3$y.  PPTP MENU$wh"
echo -e "$yy 4$y.  SSTP MENU$wh"
echo -e "$yy 5$y.  WIREGUARD MENU$wh"
echo -e "$yy 6$y.  SHADOWSOCKS MENU$wh"
echo -e "$yy 7$y.  SHADOWSOCKSR MENU$wh"
echo -e "$yy 8$y.  VMESS MENU$wh"
echo -e "$yy 9$y.  VLESS MENU$wh"
echo -e "$yy 10$y. TROJAN GFW MENU$wh"
echo -e "$yy 11$y. TROJAN GO MENU$wh"
echo -e "$yy 12$y. Settings$wh"
echo -e "$yy 13$y. Exit$wh"
echo -e "$y-------------------------------------------------$wh"
echo -e "$yl                Welcome Mahrul$wh"
echo -e "$y-------------------------------------------------$wh"
read -p "Select From Options [ 1 - 13 ] : " menu
case $menu in
1)
clear
sshovpnmenu
;;
2)
clear
l2tpmenu
;;
3)
clear
pptpmenu
;;
4)
clear
sstpmenu
;;
5)
clear
wgmenu
;;
6)
clear
ssmenu
;;
7)
clear
ssrmenu
;;
8)
clear
vmessmenu
;;
9)
clear
vlessmenu
;;
10)
clear
trmenu
;;
11)
clear
trgomenu
;;
12)
clear
setmenu
;;
13)
clear
exit
;;
*)
clear
menu
;;
esac
