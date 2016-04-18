#!/bin/sh

rc_local=/etc/rc.local
bashrc=/home/visanuwan/.bashrc

if ! grep -Fxq "setxkbmap -option grp:switch,grp:alt_shift_toggle us,no" $bashrc
then
	echo "setxkbmap -option grp:switch,grp:alt_shift_toggle us,no" >> $bashrc
fi

sed -i '/\#sudo mount -t vboxsf -o uid=1000,gid=1000 Vboxshare \/home\/visanuwan\/VboxShare/c\sudo mount -t vboxsf -o uid=1000,gid=1000 Vboxshare \/home\/visanuwan\/VboxShare' $rc_local

if ! grep -Fxq "export PATH=/home/visanuwan/AssemblyTools/FastQC:/home/visanuwan/AssemblyTools/SPAdes-3.7.1-Linux/bin:/home/visanuwan/AssemblyTools/quast-3.2:\$PATH" $bashrc
then
	echo "export PATH=/home/visanuwan/AssemblyTools/FastQC:/home/visanuwan/AssemblyTools/SPAdes-3.7.1-Linux/bin:/home/visanuwan/AssemblyTools/quast-3.2:\$PATH" >> $bashrc
fi
