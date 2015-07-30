clearpart --all --initlabel 
autopart
firstboot --disable
bootloader --location=mbr 
lang en_US
network --hostname=threed --bootproto=dhcp
reboot
rootpw noisebridge
text
timezone America/Los_Angeles
install
url --url http://fedora.mirror.lstn.net/releases/22/Everything/x86_64/os/

%packages
@workstation-product
@3d-printing
%end

%post
useradd -c 'Nerys Bridge' -G wheel noisebridge
%end
