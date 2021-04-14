# Partial configuration of .bashrc
# Michael McMahon
# This goes in your ~/.bashrc file.  After making a change, run ¨exec bash¨ to test results.

alias burn='sudo wodim -v -eject -tao dev=/dev/sr1 speed=2 -data $1'
alias cdbuilds='cd /home/user/builds'
alias cdftp='cd /var/ftp/pub'
alias cdmenu=' cd /usr/share/applications/'
# I have moved my tftp to overlap with my ftp.
alias cdtftp='cd /var/ftp/pub/pxe/pxelinux.cfg'
#alias cdtftp='cd /var/lib/tftpboot/pxelinux.cfg'
alias cdtmp='cd /tmp'
alias cdtmpd='cd $(mktemp -d)'
alias checkbattery='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
# Based on Maythux from http://askubuntu.com/questions/431251/how-to-print-the-directory-tree-in-terminal
alias dirtree='find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'
alias diskspace='ncdu'
alias diskstat='iostat -ctd 2'
alias du1='du -h --max-depth=1'
alias editawesomewm='sudo vim ~/.config/awesome/rc.lua'
alias editcron='sudo crontab -e'
alias emacs='emacs -nw'
alias findclass='xprop'
alias gittop='git clone --depth 1'
# From Braiam and Jeff Schaller at https://unix.stackexchange.com/questions/40442
alias largestdebs='aptitude search --sort "~installsize" --display-format "%p %I" "~i" | head'
alias lashr='ls -lahR'
alias lsh='ls -lah'
alias lsmib='ls -l --block-size=M'
alias mapscii-demo='telnet mapscii.me'
alias maths='bc -l'
alias mkteststructure='mkdir -p combo/{0,1,2,3,4,5,6,7,8,9}/{0,1,2,3,4,5,6,7,8,9}/{0,1,2,3,4,5,6,7,8,9}'
alias moon='curl http://wttr.in/Moon'
alias network='mate-network-properties'
alias odtext='unoconv --stdout -f text'
alias play247polkaheaven='mpv http://s7.nexuscast.com/tunein.php/rayzalokar/playlist.pls'
alias playbigcity='mpv http://38.96.148.254:9154/;stream.mp3'
alias playlofi='mpv --vo=no https://www.youtube.com/watch?v=5qap5aO4i9A'
alias playmaschinengeist='mpv http://radio.maschinengeist.org/stream_ultra.m3u'
alias playsomadefconradio='mpv https://somafm.com/defcon.pls'
alias playsomadubstepbeyond='mpv https://somafm.com/dubstep.pls'
alias playsomadronezone='mpv https://somafm.com/dronezone.pls'
alias playsomagroovesalad='mpv https://somafm.com/groovesalad.pls'
alias playsomagroovesaladclassic='mpv https://somafm.com/gsclassic.pls'
alias playsomaspecial='mpv https://somafm.com/specials.pls'
alias playsomavaporwaves='mpv https://somafm.com/vaporwaves.pls'
alias playwbur='mpv https://icecast-stream.wbur.org/wbur_www'
alias playwgbh='mpv https://streams.audio.wgbh.org:8200/wgbh-aac'
alias playwmbr='mpv https://wmbr.org/WMBR_live_128.m3u'
# From Byte Commander at https://askubuntu.com/questions/687295
alias purgeremoved="sudo apt-get purge $(dpkg -l | grep '^rc' | awk '{print $2}')"
alias rotate="sudo logrotate -f /etc/logrotate.conf"
alias sc5='echo "Taking screenshot in 5 seconds..." && scrot -cd 5 && echo Screenshot saved in $(pwd)'
alias search='find / 2>/dev/null | grep -i $1'
alias searchhere='find . 2>/dev/null | grep -i $1'
alias sshmon='ssh root@10.12.17.16'
alias sshpxe='ssh root@192.168.1.58'
alias sshvm='ssh -p 2222 root@127.0.0.1'
alias unixtime='echo $(($(date +%s)/60/60/24/365)) years $(($(date +%s)/60/60/24- ($(date +%s)/60/60/24/365)*365 )) days $(($(date +%s)/60/60- ($(date +%s)/60/60/24)*24 )) hours $(($(date +%s)/60- ($(date +%s)/60/60)*60 )) minutes $(($(date +%s)- ($(date +%s)/60)*60 )) seconds since the UNIX epoch'
alias updatearch='pacman -Syu'
alias updatedebian='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt autoremove -y && sudo apt clean'
alias updatefedora='dnf update -y'
alias updateopensuse='zypper refresh && zypper update'
alias updateredhat='yum update -y'
alias wait150='echo Wait 2.5 minutes && uptime && sleep 150 && uptime'
alias wait300='echo Wait 5 minutes && uptime && sleep 300 && uptime'
alias weather='curl http://wttr.in/'
alias weatherboston='curl http://wttr.in/Boston'
alias weatherchart='curl v2d.wttr.in/'
alias weatherchartboston='curl v2d.wttr.in/Boston'

# Custom program preferences
alias chrome='/opt/google/chrome/google-chrome' # Proprietary
alias clearccache='ccache -C'
alias etcher='sudo /home/user/builds/Etcher-linux-x64.AppImage &'
alias feh='feh -FZ'
alias htask='task project:mr or project:home list'
alias nanobot='sudo nano -\$cwS'
alias png2jpgall='mogrify -format jpg *.png'
alias printers='system-config-printer'
alias rdp='remmina &'
alias xkcdpass='shuf -n3 /usr/share/dict/words | tr -d " \t\n" && echo \ '
alias startvpn='sudo openvpn /etc/openvpn/client.conf'
# VNU https://github.com/validator/validator/releases/latest
alias vnu='java -jar /home/user/Downloads/validator/vnujar/vnu.jar --also-check-css --also-check-svg --stdout'
alias vnuserver='java -cp /home/user/Downloads/validator/vnujar/vnu.jar nu.validator.servlet.Main 8888'
alias wtask='task project:git or project:scc list'

# Based on karel from https://askubuntu.com/questions/856911
alias youtube-dlbest='youtube-dl -f best -ciw --output "%(title)s.%(ext)s" -v'
alias youtube-dlbestaudio='youtube-dl -f bestaudio -ciw --output "%(title)s.%(ext)s" -v --extract-audio --audio-format wav'

# Jokes
alias corp='curl -s http://cbsg.sourceforge.net/cgi-bin/live | grep -Eo "^<li>.*</li>" | sed s,\</\\?li\>,,g | shuf -n 1'
# corp is from Genunix from http://www.bashoneliners.com
alias hitme='echo -e $(shuf -n 1 ~/jokes.txt)'
# See https://github.com/TechnologyClassroom/hitme for jokes.txt
alias LS='echo " _     ____  
| |   / ___| 
| |   \___ \ 
| |___ ___) |
|_____|____/ 
"'
alias now='sleep 0'
alias sl='sl -le'
alias SL='sl -e'
alias telemarketer='rig | sed "s/xxx-xxxx/$(echo $RANDOM | cut -c 1-3)-$(echo $RANDOM | cut -c 1-4)/"'
# Also try rig.py 
alias thesetup=clear && echo "Guess what?"
alias vat='echo Chicken butt'
alias Vat='echo Chicken butt'
alias vat?='echo Chicken butt'
alias Vat?='echo Chicken butt'
alias what?='echo Chicken butt'
alias What?='echo Chicken butt'
alias what='echo Chicken butt'
alias What='echo Chicken butt'

# Based on graysky from https://bbs.archlinux.org/viewtopic.php?id=110601
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xvjf $1 && cd $(echo $1 | sed 's/.tar.bz2//')    ;;
      *.tar.gz)    tar xvzf $1 && cd $(echo $1 | sed 's/.tar.gz//')    ;;
      *.bz2)       bunzip2 $1 && cd $(echo $1 | sed 's/.bz2//')    ;;
      *.rar)       unrar x $1 && cd $(echo $1 | sed 's/.rar//')    ;;
      *.gz)        gunzip $1 && cd $(echo $1 | sed 's/.gz//')    ;;
      # Based on Jeff Sheffield from https://stackoverflow.com/questions/18787375
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

# Based on Jeff Sheffield from https://stackoverflow.com/questions/18787375
extractrpm () {
  rpm2cpio $1 | cpio -idmv
}

searchcontacts () {
  grep -a2 -i $1 ~/contacts.vcf
}

# Based on Egil from https://askubuntu.com/questions/42482
virtualboxshutdown () {
  VBoxManage controlvm $1 acpipowerbutton
}

# added by Miniconda2 installer
export PATH="/home/user/miniconda2/bin:$PATH"

# golang path
export GOPATH=$HOME/builds/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# github cli
#export PATH="$HOME/.githubcli/bin:$PATH"
alias ghil='gh issue list'
# Show issues in the terminal instead of opening a browser
alias ghiv='gh issue view -p' # Follow with issue number

# rust cargo
export PATH="$HOME/.cargo/bin:$PATH"

# x200 page up/page down
xmodmap .Xmodmap

# These can easily become too much.  Especially if you use tmux or screen.  Pick
# zero, one or two.
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
echo -e $(shuf -n 1 jokes.txt)
echo \ 
