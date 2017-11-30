# Partial configuration of .bashrc
# Michael McMahon
# This goes in your ~/.bashrc file.  After making a change, run ¨exec bash¨ to test results.

alias burn='sudo wodim -v -eject -tao dev=/dev/sr1 speed=2 -data $1'
alias corp='curl -s http://cbsg.sourceforge.net/cgi-bin/live | grep -Eo "^<li>.*</li>" | sed s,\</\\?li\>,,g | shuf -n 1'
# corp is from Genunix from http://www.bashoneliners.com
alias dirtree='find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'
# dirtree is based on Maythux from http://askubuntu.com/questions/431251/how-to-print-the-directory-tree-in-terminal
alias editawesomewm='sudo nano ~/.config/awesome/rc.lua'
alias editcron='sudo crontab -e'
alias hitme='echo -e $(cat jokes.txt | shuf -n 1)'
alias lsmib='ls -l --block-size=M'
alias LS='echo " _     ____  
| |   / ___| 
| |   \___ \ 
| |___ ___) |
|_____|____/ 
"'
alias mapscii-demo='telnet mapscii.me'
alias maths='bc -l'
alias nanobot='sudo nano -\$cwS'
alias rdp='remmina &'
alias sc5='echo "Taking screenshot in 5 seconds..." && scrot -cd 5 && echo Screenshot saved in $(pwd)'
alias search='find / 2>/dev/null | grep -i $1'
alias searchhere='find . 2>/dev/null | grep -i $1'
alias sshpxe='ssh root@192.168.1.58'
alias unixtime='echo $(($(date +%s)/60/60/24/365)) years $(($(date +%s)/60/60/24- ($(date +%s)/60/60/24/365)*365 )) days $(($(date +%s)/60/60- ($(date +%s)/60/60/24)*24 )) hours $(($(date +%s)/60- ($(date +%s)/60/60)*60 )) minutes $(($(date +%s)- ($(date +%s)/60)*60 )) seconds since the UNIX epoch'
alias updatedebian='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y'
alias wait150='echo Wait 2.5 minutes && uptime && sleep 150 && uptime'
alias wait300='echo Wait 5 minutes && uptime && sleep 300 && uptime'

# Custom program preferences
alias chrome='/opt/google/chrome/google-chrome' # Proprietary
alias etcher='sudo /home/user/builds/Etcher-linux-x64.AppImage &'
alias feh='feh -FZ'
alias printers='system-config-printer'

searchcontacts () {
    grep -a2 -i $1 ~/contacts.vcf
}

# Based on Jeff Sheffield from https://stackoverflow.com/questions/18787375/how-do-i-extract-the-contents-of-an-rpm
extractrpm () {
    rpm2cpio $1 | cpio -idmv
}

# extract is based on graysky from https://bbs.archlinux.org/viewtopic.php?id=110601
extract () {
    if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1 && cd $(echo $1 | sed 's/.tar.bz2//')    ;;
           *.tar.gz)    tar xvzf $1 && cd $(echo $1 | sed 's/.tar.gz//')    ;;
           *.bz2)       bunzip2 $1 && cd $(echo $1 | sed 's/.bz2//')    ;;
           *.rar)       unrar x $1 && cd $(echo $1 | sed 's/.rar//')    ;;
           *.gz)        gunzip $1 && cd $(echo $1 | sed 's/.gz//')    ;;
           # Based on Jeff Sheffield from https://stackoverflow.com/questions/18787375/how-do-i-extract-the-contents-of-an-rpm
           *.rpm)       rpm2cpio $1 | cpio -idmv    ;;
           *.tar)       tar xvf $1 && cd $(echo $1 | sed 's/.tar//')    ;;
           *.tbz2)      tar xvjf $1 && cd $(echo $1 | sed 's/.tbz2//')    ;;
           *.tgz)       tar xvzf $1 && cd $(echo $1 | sed 's/.tgz//')    ;;
           *.zip)       unzip $1 && cd $(echo $1 | sed 's/.zip//')    ;;
           *.Z)         uncompress $1 && cd $(echo $1 | sed 's/.Z//')    ;;
           *.7z)        7z x $1 && cd $(echo $1 | sed 's/.7z//')    ;;
           *)           echo "don't know how to extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

# This can easily become too much.  Especially if you use tmux or screen.  Pick one or two.

# Ascii Art message
#toilet -f$(ls -1 /usr/share/figlet | grep flf | shuf -n 1) Boot Message
#toilet -fslant Boot Message
#echo \ 
# 141 digits of pi
#pi 141
#echo \ 
# Random three items from BSD calendar
#calendar | shuf -n 3
#echo \ 
# Time since the UNIX epoch
#echo $(($(date +%s)/60/60/24/365)) years $(($(date +%s)/60/60/24- ($(date +%s)/60/60/24/365)*365 )) days $(($(date +%s)/60/60- ($(date +%s)/60/60/24)*24 )) hours $(($(date +%s)/60- ($(date +%s)/60/60)*60 )) minutes $(($(date +%s)- ($(date +%s)/60)*60 )) seconds since the UNIX epoch
#echo \ 
# Refresh command information
#echo Did you know? ; whatis $(ls /bin | shuf -n 1)
#echo \ 
# Phase of the Moon
#/usr/games/pom
#echo \ 
# Daily fortune or anecdote
#/usr/games/fortune -s
#echo \
# Tell a random joke from jokes.txt
echo -e $(cat jokes.txt | shuf -n 1)
echo \ 
