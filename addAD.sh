#install cockpit
dnf install cockpit
systemctl enable --now cockpit.socket

#config resolv.conf
chattr -i /etc/resolv.conf
printf "search CSE-454-SDL.edu.tr marun.edu.tr
nameserver [server-ip-addres]
nameserver 193.140.143.2
nameserver 193.140.143.3" > /etc/resolv.conf
chattr +i /etc/resolv.conf

#leave old ad
realm leave CSE-SDL.edu.tr
#join new ad
realm discover CSE-454-SDL.edu.tr
realm join CSE-454-SDL.edu.tr
