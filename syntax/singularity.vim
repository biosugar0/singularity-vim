" singularity.vim - Syntax highlighting for Singularity.
" Maintainer:   Yuto Kimura <https://github.com/biosugar0>
" Version:      0.1
" Last Change:  2018 Feb 21
" License:      MIT


if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "singularity"

syn match singularityKeyword /\v^\s*(Bootstrap:|From:|OSVersion:|MirrorURL:|Include:)\s/
syn match singularityKeyword /\v^\s*(\%help|\%setup|\%files|\%labels|\%environment)$/
syn match singularityKeyword /\v^\s*(\%runscript|\%test|\%post)$/
syn match singularityKeyword /\v^\s*(\%apprun|\%applabels|\%appinstall)\s/
syn match singularityKeyword /\v^\s*(\%appenv|\%apphelp|\%appfiles)\s/

syn region Emails start=/</ end=/>/ contains=@ oneline
syn match Urls /\(http\|https\|ssh\|hg\|git\)\:\/\/[a-zA-Z0-9\/\-\.]\+/
syntax region singularityString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax match singularityComment "\v^\s*#.*$"

setlocal iskeyword+=-
syn keyword ShellCommands acpid add-shell addgroup adduser adjtimex apk arp arping ash awk base64 basename bbconfig beep blkdiscard blkid blockdev brctl bunzip2 bzcat bzip2 cal cat chgrp chmod chown chpasswd chroot chvt cksum clear cmp comm conspy cp cpio crond crontab cryptpw cut date dc dd deallocvt delgroup deluser depmod df diff dirname dmesg dnsdomainname dos2unix du dumpkmap dumpleases echo ed egrep eject env ether-wake expand export expr factor fallocate false fatattr fbset fbsplash fdflush fdformat fdisk fgrep find findfs flock fold free fsck fstrim fsync fuser getconf getent getopt getty grep groups gunzip gzip halt hd hdparm head hexdump hostid hostname hwclock iconv id ifconfig ifdown ifenslave ifup init inotifyd insmod install ionice iostat ip ipaddr ipcalc ipcrm ipcs iplink ipneigh iproute iprule iptunnel kbd_mode kill killall killall5 klogd ldconfig ldd less link linux32 linux64 ln loadfont loadkmap logger login logread losetup ls lsmod lsof lspci lsusb lzcat lzma lzop lzopcat makemime md5sum mdev mesg microcom mkdir mkdosfs mkfifo mkfs.vfat mkmntdirs mknod mkpasswd mkswap mktemp modinfo modprobe more mount mountpoint mpstat mv nameif nanddump nandwrite nbd-client nc netstat nice nl nmeter nohup nologin nproc nsenter nslookup ntpd od openvt partprobe passwd paste patch pgrep pidof ping ping6 pipe_progress pkill pmap poweroff powertop printenv printf ps pscan pstree pwd pwdx raidautorun rdate rdev readahead readlink readprofile realpath reboot reformime remove-shell renice reset resize rev rfkill rm rmdir rmmod route run-parts scanelf sed sendmail seq setconsole setfont setkeycodes setlogcons setpriv setserial setsid sh sha1sum sha256sum sha3sum sha512sum showkey shred shuf slattach sleep smemcap sort split ssl_client stat strings stty su sum swapoff swapon switch_root sync sysctl syslogd tac tail tar tee test time timeout top touch tr traceroute traceroute6 true truncate tty ttysize tunctl udhcpc udhcpc6 umount uname unexpand uniq unix2dos unlink unlzma unlzop unshare unxz unzip uptime usleep uudecode uuencode vconfig vi vlock volname watch watchdog wc wget which whoami whois xargs xxd xzcat yes zcat

hi def link singularityString String
hi def link singularityKeyword Keyword
hi def link singularityComment Comment
hi def link Emails Underlined
hi def link Urls Underlined
hi def link ShellCommands Function
