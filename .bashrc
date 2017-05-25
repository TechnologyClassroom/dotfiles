# Partial configuration of .bashrc
# Michael McMahon
# This goes in your ~/.bashrc file.  After making a change, run ¨exec bash¨ to test results.

# dirtree is based on Maythux from http://askubuntu.com/questions/431251/how-to-print-the-directory-tree-in-terminal
# extract is based on graysky from https://bbs.archlinux.org/viewtopic.php?id=110601

alias search='find / 2>/dev/null | grep -i $1'
alias searchhere='find . 2>/dev/null | grep -i $1'
alias dirtree='find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'
alias editcron='sudo crontab -e'
alias lsmib='ls -l --block-size=M'

# Custom program preferences
alias feh='feh -FZ'
alias etcher='sudo /home/user/builds/Etcher-linux-x64.AppImage &'
alias chrome='/opt/google/chrome/google-chrome' # Proprietary
alias printers='system-config-printer'
alias editcron='sudo crontab -e'
alias editawesomewp='sudo nano /usr/share/awesome/themes/default/theme.lua'
alias lsmb='ls -l --block-size=M'
alias updateubuntu='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y'
alias wait300='echo Wait 5 minutes && uptime && sleep 300 && uptime'
alias wait150='echo Wait 2.5 minutes && uptime && sleep 150 && uptime'
alias sc5='echo "Taking screenshot in 5 seconds..." && scrot -cd 5 && echo Screenshot saved in pwd'

searchcontacts () {
    grep -a2 -i $1 ~/contacts.vcf
}

extract () {
    if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1 && cd $(echo $1 | sed 's/.tar.bz2//')    ;;
           *.tar.gz)    tar xvzf $1 && cd $(echo $1 | sed 's/.tar.gz//')    ;;
           *.bz2)       bunzip2 $1 && cd $(echo $1 | sed 's/.bz2//')    ;;
           *.rar)       unrar x $1 && cd $(echo $1 | sed 's/.rar//')    ;;
           *.gz)        gunzip $1 && cd $(echo $1 | sed 's/.gz//')    ;;
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
# Refresh command information
#echo Did you know? ; whatis $(ls /bin | shuf -n 1)
#echo \ 
# Phase of the Moon
#/usr/games/pom
#echo \ 
# Daily fortune or anecdote
#/usr/games/fortune 
#echo \ 
