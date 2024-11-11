# Partial configuration of .bashrc
# Michael McMahon
# This goes in your ~/.bashrc file.  After making a change, run `exec bash` or
# `source ~/.bashrc` to test results.

# Do not put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Append to the history file, do not overwrite it
shopt -s histappend

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000000
HISTFILESIZE=2000000

alias alsaadjust='alsamixer'
alias amirunningx11orwayland="echo $XDG_SESSION_TYPE"
# Adjust screen brightness.
#   brightness 0.3  # Set the screen to 30% brightness.
#   brightness 0.6  # Set the screen to 60% brightness.
# Based on Jae Beojkkoch at https://unix.stackexchange.com/a/529164
alias brightness="xrandr --output $(xrandr -q | grep ' connected' | head -n 1 | cut -d ' ' -f1) --brightness"
alias burn='sudo wodim -v -eject -tao dev=/dev/sr1 speed=2 -data $1'
alias cdbuilds='cd /home/user/builds'
alias cdmenu=' cd /usr/share/applications/'
alias cdtmp='cd /tmp'
alias cdtmpd='cd $(mktemp -d)'
alias checkbattery='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias clock='tty-clock -s'
alias curlresponseheaders='curl -s -D - -o /dev/null'
alias curlrequestheaders='curl -I -L'
# Based on Maythux from http://askubuntu.com/questions/431251/how-to-print-the-directory-tree-in-terminal
alias dirtree='find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'
alias du1='du -h --max-depth=1'
alias editawesomewm='nvim ~/.config/awesome/rc.lua'
alias editcron='sudo crontab -e'
alias findclass='xprop'
alias findip='curl -4s https://icanhazip.com'
alias gitcloneshallow='git clone --depth 1'
alias gittop='git clone --depth 1'
# How old is this repository?  Good for setting copyright dates.
#alias gitdates="echo $(git log | grep 'Date: ' | tail -n 1 | awk '{print $(NF-1)}')-$(git log | grep 'Date: ' | head -n 1 | awk '{print $(NF-1)}')"
# ipvXprint based on tukusejssirs and SAM at https://stackoverflow.com/a/26694162
alias ipv4print='ip -4 addr | grep -oP "inet \K[0-9.]*" | grep -e 10.0 -e 192.168.0 -e 192.168.50'
alias ipv6print='ip -6 addr | grep -oP "(?<=inet6\s)[\da-f:]+"'
alias journalctllastboot='journalctl --boot=-1'
# From Braiam and Jeff Schaller at https://unix.stackexchange.com/questions/40442
alias largestdebs='aptitude search --sort "~installsize" --display-format "%p %I" "~i" | head'
alias lashr='ls -lahR'
alias lsh='ls -lah'
alias lsmib='ls -l --block-size=M'
alias mapscii-demo='telnet mapscii.me'
alias maths='bc -l'
alias mkteststructure='mkdir -p combo/{0..9}/{0..9}/{0..9}'
alias moon='curl http://wttr.in/Moon'
alias mountudisk='udisksctl mount -b'
alias mountudiskunlock='udisksctl unlock -b'
alias umountudisk='udisksctl unmount -b'
alias keystrokesmate='mate-keybinding-properties'
alias network='mate-network-properties'
alias notificationblip='printf \\a'  # Works on remote servers.
# Especially useful notifying when long processes complete.
alias odtext='unoconv --stdout -f text'
# sudo apt install  -y apt-file
# Search the equivalence of https://packages.ubuntu.com locally.
alias packagesearch="apt-file find -x"
alias packagesearchupdate="apt-file update"
alias packagesearcharch="pacman -F"
alias packagesearchupdatearch="pacman -Fy"
alias passgen='head -c 20 <(tr -dc "[:alnum:]" < /dev/urandom) && echo'
alias passpin='head -c 6 <(tr -dc "[:digit:]" < /dev/urandom) && echo'
alias passxkcd='shuf -n3 /usr/share/dict/words | tr -d ' \t\n' | sed s/\'s//g && echo'
alias passxkcdlong='shuf -n7 /usr/share/dict/words | tr -d ' \t\n' | sed s/\'s//g && echo'
alias psramsort="ps aux --sort=-%mem | head -n 8"
# From Byte Commander at https://askubuntu.com/questions/687295
alias purgeremoved="sudo apt-get purge $(dpkg -l | grep '^rc' | awk '{print $2}')"
alias rotate="sudo logrotate -f /etc/logrotate.conf"
alias sc5='echo "Taking screenshot in 5 seconds..." && scrot -cd 5 && echo Screenshot saved in $(pwd)'
alias search='find / 2>/dev/null | grep -i $1'
alias searchhere='find . 2>/dev/null | grep -i $1'
#alias sshmon='ssh root@10.12.17.16'
#alias sshpxe='ssh root@192.168.1.58'
#alias sshvm='ssh -p 2222 root@127.0.0.1'
alias tb="nc termbin.com 9999"  # Pastes piped text to termbin.com
alias translate='argos-translate-gui'
alias translateupdate='for i in $(argospm search | sed "s/:.*$//g" | grep "_en$"); do echo "$i" && argospm install "$i" ; done'
alias unixtime='echo $(($(date +%s)/60/60/24/365)) years $(($(date +%s)/60/60/24- ($(date +%s)/60/60/24/365)*365 )) days $(($(date +%s)/60/60- ($(date +%s)/60/60/24)*24 )) hours $(($(date +%s)/60- ($(date +%s)/60/60)*60 )) minutes $(($(date +%s)- ($(date +%s)/60)*60 )) seconds since the UNIX epoch'
alias updatearch='pacman -Syu'
alias updatedebian='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt autoremove -y && sudo apt clean'
alias updatedebianverbose='sudo apt update && sudo apt upgrade -V && sudo apt dist-upgrade -V && sudo apt autoremove -V &&  sudo apt clean'
alias updatefedora='dnf update -y'
alias updateopensuse='zypper refresh && zypper update'
alias updateredhat='yum update -y'
alias wait150='echo Wait 2.5 minutes && uptime && sleep 150 && uptime'
alias wait300='echo Wait 5 minutes && uptime && sleep 300 && uptime'
alias weather='curl http://wttr.in/'
alias weatherboston='curl http://wttr.in/Boston'
alias weatherchart='curl v2d.wttr.in/'
alias weatherchartboston='curl v2d.wttr.in/Boston'

# Radio stations
alias play247polkaheaven='mpv http://s7.nexuscast.com/tunein.php/rayzalokar/playlist.pls'  # Polka
alias playb87fm='mpv https://streamer.radio.co/s883e1674e/listen'  # Boston Soca, Hip Hop, and Rap
alias playbigcity='mpv https://streamer.radio.co/s883e1674e/listen'
alias playlofi='mpv --vo=no https://www.youtube.com/watch?v=5qap5aO4i9A'
alias playmaschinengeist='mpv http://radio.maschinengeist.org/stream_ultra.m3u'  # Drone
alias playwbur='mpv https://icecast-stream.wbur.org/wbur_www'  # Boston's other NPR station
alias playwgbh='mpv https://streams.audio.wgbh.org:8200/wgbh-aac'  # Boston's other NPR station
alias playwmbr='mpv https://wmbr.org/WMBR_live_128.m3u'  # MIT
alias playsomadronezone-ambient='mpv https://somafm.com/dronezone.pls'
alias playsomadeepspaceone-ambient='mpv https://somafm.com/deepspaceone.pls'
alias playsomaspacestationsoma-electronic='mpv https://somafm.com/spacestation.pls'
alias playsomavaporwaves-electronic='mpv https://somafm.com/vaporwaves.pls'
alias playsomadefconradio-electronic-specials='mpv https://somafm.com/defcon.pls'
alias playsomalush-electronic='mpv https://somafm.com/lush.pls'
alias playsomafluid-electronic-hiphop='mpv https://somafm.com/fluid.pls'
alias playsomapoptron-alternative='mpv https://somafm.com/poptron.pls'
alias playsomasuburbsofgoa-world='mpv https://somafm.com/suburbsofgoa.pls'
alias playsomagroovesalad-ambient-electronic='mpv https://somafm.com/groovesalad.pls'
alias playsomagroovesaladclassic-ambient-electronic='mpv https://somafm.com/gsclassic.pls'
alias playsomasynphaeraradio-ambient-electronic='mpv https://somafm.com/synphaera.pls'
alias playsoman5mdradio-specials='mpv https://somafm.com/n5md.pls'
alias playsomabeatblender-electronic='mpv https://somafm.com/beatblender.pls'
alias playsomabootliquor-americana='mpv https://somafm.com/bootliquor.pls'
alias playsomaillinoisstreetlounge-lounge='mpv https://somafm.com/illstreet.pls'
alias playsomathistleradio-celtic-world='mpv https://somafm.com/thistle.pls'
alias playsomametaldetector-metal='mpv https://somafm.com/metal.pls'
alias playsomacovers-eclectic='mpv https://somafm.com/covers.pls'
alias playsomacliqhopidm-electronic='mpv https://somafm.com/cliqhop.pls'
alias playsomadubstepbeyond-electronic='mpv https://somafm.com/dubstep.pls'
alias playsomaseveninchsoul-oldies='mpv https://somafm.com/7soul.pls'
alias playsomaleftcoast70s-70s-rock='mpv https://somafm.com/seventies.pls'
alias playsomaunderground80s-alternative-electronic='mpv https://somafm.com/u80s.pls'
alias playsomaheavyweightreggae-reggae='mpv https://somafm.com/reggae.pls'
alias playsomasecretagent-lounge='mpv https://somafm.com/secretagent.pls'
alias playsomathetrip-electronic='mpv https://somafm.com/thetrip.pls'
alias playsomasonicuniverse-jazz='mpv https://somafm.com/sonicuniverse.pls'
alias playsomaindiepoprocks-alternative-rock='mpv https://somafm.com/indiepop.pls'
alias playsomadigitalis-electronic-alternative='mpv https://somafm.com/digitalis.pls'
alias playsomafolkforward-folk-alternative='mpv https://somafm.com/folkfwd.pls'
alias playsomablackrockfm-eclectic='mpv https://somafm.com/brfm.pls'
alias playsomamissioncontrol-ambient-electronic='mpv https://somafm.com/missioncontrol.pls'
alias playsomasf10-33-ambient-news='mpv https://somafm.com/sf1033.pls'
alias playsomasfpolicescanner-live-news='mpv https://somafm.com/scanner.pls'
alias playsomabagelradio-alternative-rock='mpv https://somafm.com/bagel.pls'
alias playsomasomafmlive-specials='mpv https://somafm.com/live.pls'
alias playsomaspecial='mpv https://somafm.com/specials.pls'  # Holiday stations

# TV Stations
alias playcnn='mplayer https://cnn-cnninternational-1-eu.rakuten.wurl.com/manifest/playlist.m3u8'

# Custom program preferences
alias black80='black -l 79'
alias chrome='/opt/google/chrome/google-chrome' # Proprietary
alias clearccache='ccache -C'
alias cronhourlytest='run-parts -v /etc/cron.hourly'
alias cronweeklytest='run-parts -v /etc/cron.weekly'
alias cronmonthlytest='run-parts -v /etc/cron.monthly'
# https://github.com/papandreou/seespee
alias csp='seespee'
alias diskspace='ncdu'
# sudo apt install -y sysstat
alias diskstat='iostat -ctd 2'
alias doctlcfg='vim $HOME/.config/doctl/config.yaml'
alias doctlls='doctl compute droplet list --format "ID,Name,PublicIPv4"'
alias doctllsa='doctl compute droplet list'
alias doctlmk='doctl compute droplet create test --size s-1vcpu-1gb --image debian-10-x64 --region nyc1 --ssh-keys 1c:32:d2:06:15:90:21:39:06:8b:e9:0a:a9:4c:b7:80'
alias doctlrm='doctl compute droplet delete -f'
alias duplicates='rdfind -ignoreempty true -deleteduplicates true'  # Follow with directory or directories that should be searched for duplicate files.
alias emacs='emacs -nw'
#alias etcher='sudo /home/user/builds/Etcher-linux-x64.AppImage &'
alias feh='feh -FZ'
alias googledrive='gdrive download --recursive'  # Add a drive id as $1 (that is the long string at the end of a Google Drive link.  https://github.com/prasmussen/gdrive
alias i3edit='nvim ~/.config/i3/config'
alias logcat='zcat -f'
alias lynisroot='cd /usr/share/lynis/ && sudo lynis audit system -Q'
alias lynisrootlog='cd /usr/share/lynis/ && sudo lynis audit system -Q | tee -a lynis"$(date +%Y-%m-%d)".log'
alias nanobot='sudo nano -\$cwS'
alias nettop='sudo nethogs'
alias nmaplocal0='sudo nmap -sn 192.168.0.0/24'
alias nmaplocal50='sudo nmap -sn 192.168.50.0/24'
alias nmaplocal1000='sudo nmap -sn 10.0.0.0/24'
alias neovim='nvim'
# Provide one argument instead of two.
alias pdf2svgsimple="pdf2svg $1 ${1%.pdf}-pdf2svg.svg"
alias pdf2svginkscape="inkscape --without-gui --file=$1 --export-plain-svg=${1%.pdf}-inkscape.svg"
alias png2jpgall='mogrify -format jpg *.png'
alias prettier-recursive="npx prettier . --write"
alias prettier-recursive-check="npx prettier . --check"
alias printers='system-config-printer'
# qrencode needs string or URL as an argument.
alias qrsvg="qrencode -t SVG -o /tmp/qrcode.svg"
alias qrpng="qrencode -o qrcode.png"
alias qrpnglarge="qrencode -d 400 -s 10 -o qrcode-400-10.png"
# qrdecode needs an image file argument with a QR code.
alias qrdecode="qrencode -r"
alias qrread="qrencode -r"
alias ripflac="cd ~/Music/flac && abcde -o flac"
alias rdp='remmina &'
alias reddit='ttrv'
alias sc5='echo "Taking screenshot in 5 seconds..." && scrot -cd 5 && echo Screenshot saved in $(pwd)'
alias scpold='scp -o HostKeyAlgorithms=+ssh-rsa -o PubkeyAcceptedAlgorithms=+ssh-rsa'
alias scrubmetadata='exiftool -all= -tagsfromfile @ -Orientation'
alias scrubmetadatarecursive='find . -type f -exec exiftool -all= -tagsfromfile @ -Orientation {} \;'
alias spdm='spd -c ~/.spd/spd-mastodon.conf'
alias sshold='ssh -o HostKeyAlgorithms=+ssh-rsa -o PubkeyAcceptedAlgorithms=+ssh-rsa'
alias startvpn='sudo openvpn /etc/openvpn/client.conf'
alias svg2png1x="inkscape -C $1 -o ${1%.svg}.png"
alias svg2png1.5x="inkscape -C $1 -d 144 -o ${1%.svg}-1.5x.png"
alias svg2png2x="inkscape -C $1 -d 192 -o ${1%.svg}-2x.png"
alias svg2png3x="inkscape -C $1 -d 288 -o ${1%.svg}-3x.png"
# Task Warrior
alias gtask='task project:mr list'
alias htask='task project:git or project:home list'
alias wtask='task project:fsf list'
# VNU https://github.com/validator/validator/releases/latest
alias vnu='java -jar /home/user/Downloads/validator/vnujar/vnu.jar --also-check-css --also-check-svg --stdout'
alias vnuserver='java -cp /home/user/Downloads/validator/vnujar/vnu.jar nu.validator.servlet.Main 8888'
alias wgetdir='wget -c -e robots=off -r -np -R "index.html*"'
alias woffwoff2gen='for i in *.ttf; do woff2_compress "$i" && sfnt2woff "$i"; done'

# youtube-dl and yt-dlp abbreviated extreme commands. By default, the output is
# OK. Sometimes you want to preview something and want it fast so the worst
# quality is enough. No need to wait for average quality to download if you are
# not sure about it. Sometimes the video is a screencast and you want to read
# every line so average is not good enough. Sometimes you want to archive the
# video in the highest possible quality. Sometimes you just want the audio.
# Based on karel from https://askubuntu.com/questions/856911
alias youtube-dlbest='youtube-dl -f best -ciw --output "%(title)s.%(ext)s" -v'
alias youtube-dlbestaudio='youtube-dl -f bestaudio -ciw --output "%(title)s.%(ext)s" -v --extract-audio --audio-format wav'
alias youtube-dlworst='youtube-dl -f worst -ciw --output "%(title)s.%(ext)s" -v'
alias youtube-dlworstaudio='youtube-dl -f worstaudio -ciw --output "%(title)s.%(ext)s" -v --extract-audio --audio-format wav'
alias yt-dlpbest='yt-dlp -f best -ciw --output "%(title)s.%(ext)s" -v'
alias yt-dlpbestaudio='yt-dlp -f bestaudio -ciw --output "%(title)s.%(ext)s" -v --extract-audio --audio-format wav'
alias yt-dlpworst='yt-dlp -f worst -ciw --output "%(title)s.%(ext)s" -v'
alias yt-dlpworstaudio='yt-dlp -f worstaudio -ciw --output "%(title)s.%(ext)s" -v --extract-audio --audio-format wav'

# Jokes
alias corp='curl -s http://cbsg.sourceforge.net/cgi-bin/live | grep -Eo "^<li>.*</li>" | sed s,\</\\?li\>,,g | shuf -n 1'
# corp is from Genunix from http://www.bashoneliners.com
cowsayshowcase() {
  for i in $(cowsay -l | awk 'NR>1'); do
    cowsay -f $i $i
  done
}
alias hitme='echo -e $(shuf -n 1 ~/jokes.txt)'
# See https://github.com/TechnologyClassroom/hitme for jokes.txt
alias LS='echo " _     ____
| |   / ___|
| |   \___ \
| |___ ___) |
|_____|____/
"'
alias now='sleep 0'
alias say="spd-say"
# Inspired by https://botsin.space/@scream/
scream () {
  shuf -er -n"$(( ( RANDOM % 30 ) + 1 ))" A | tr -d '\n' && shuf -er -n"$(( ( RANDOM % 20 ) + 1 ))" H | tr -d '\n' && echo
}
alias shrug='echo "¯\_(ツ)_/¯"'
alias shrugcopy='echo "¯\_(ツ)_/¯" | xclip -selection clipboard'
#alias sl='sl -le'
#alias SL='sl -e'
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

# Automatically apply changes that shellcheck can fix.
shellfix () {
  shellcheck -f diff $1 | patch -p1
}
# Based on https://github.com/koalaman/shellcheck/issues/1220
# Name from matthewpersico and command from oxr463.

shellcount () {
  shellcheck -f json $1 | jq | grep -c file\"
}

# https://juanmatiasdelacamara.wordpress.com/2014/12/26/unminify-css-file-from-command-line/
unminify () {
  cat $1 | awk '{gsub(/{|;/,"&\n\t"); print}' | awk '{if(match($0,/[^\;]+}/)) {gsub(/}/,";\n&\n"); print}else{gsub(/}/,"\n&"); print}' > $1.unmin
}

# Lock the desktop.
lock () {
  xdg-screensaver lock
}

# Date math
datesubtract () {
  dateutils.ddiff -i "%Y%m%d" $1 $2
}

datedayssincetoday () {
  dateutils.ddiff -i "%Y%m%d" $1 "$(date +%Y%m%d)"
}

# Do one pomodoro routine.
# https://en.wikipedia.org/wiki/Pomodoro_Technique
pomo () {
  sleep "$((25 * 60))"  # Wait 25 minutes.
  xdg-screensaver lock  # Lock the system.
  # Wait 5 to 10 minutes.
  # Unlock system.  Start another pomo.
}

# Calculate BMI (Imperial)
# bmi Number_for_weight_in_pounds
# Set Height below for your height in inches.
bmi () {
  HEIGHT=78
  echo "($1 * 703) / ($HEIGHT * $HEIGHT)" | bc -l
}

# Detect if apt has installed a program.
isxinstalled () {
  if [ $(apt -qq list "*$1*" 2>/dev/null | grep -c installed) -ge 1 ]; then echo "$1 detected on $HOSTNAME by apt!"; else echo "$1 not found by apt, but another package manager may have installed it outside of apt system."; fi
}

# Print PID, RSS, and Name fields of ps to quickly compare RAM usage.
psram () {
  ps -F -C "$1" | awk '{ print $3 " " $6 " " $11 " " $12}'
}

# Check how long a process has been running in seconds.
processruntime () {
  ps -eo etimes,pid,cmd | grep "$1" | grep -v grep
}

killprocesslongerthan5minutes () {
  ps -eo pid,etimes,cmd | grep "$1" | grep -v grep | awk '{if ($2 > 300) { print "kill "$1}}'
}

# How much RAM is a process using in human readable format?
# ramprocess icedove
ramprocess () {
  ps -F -C "$1" | awk 'NR>1 {$6=int($5/1024)"M";}{ print $6 " " $11;}'
}

# mtr instead of traceroute.
# sudo apt install -y mtr
traceroute () {
  mtr --report $1 | grep -v "???"
}
# --report is command-line by default and runs 10 tests against all hops.
# Excluding ??? skips unknowns.

5minrun () {
  timeout -k 300 $1
}

# Based on graysky from https://bbs.archlinux.org/viewtopic.php?id=110601
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xvjf $1 && cd $(echo $1 | sed 's/.tar.bz2//') ;;
      *.tar.gz)    tar xvzf $1 && cd $(echo $1 | sed 's/.tar.gz//')  ;;
      *.bz2)       bunzip2 $1 && cd $(echo $1 | sed 's/.bz2//')      ;;
      *.rar)       unrar x $1 && cd $(echo $1 | sed 's/.rar//')      ;;
      *.gz)        gunzip $1 && cd $(echo $1 | sed 's/.gz//')        ;;
      # Based on Jeff Sheffield from https://stackoverflow.com/questions/18787375
      *.rpm)       rpm2cpio $1 | cpio -idmv                          ;;
      *.tar)       tar xvf $1 && cd $(echo $1 | sed 's/.tar//')      ;;
      *.tbz2)      tar xvjf $1 && cd $(echo $1 | sed 's/.tbz2//')    ;;
      *.tgz)       tar xvzf $1 && cd $(echo $1 | sed 's/.tgz//')     ;;
      *.xz)        unxz $1 && cd $(echo $1 | sed 's/.xz//')          ;;
      *.zip)       unzip $1 && cd $(echo $1 | sed 's/.zip//')        ;;
      *.Z)         uncompress $1 && cd $(echo $1 | sed 's/.Z//')     ;;
      *.7z)        7z x $1 && cd $(echo $1 | sed 's/.7z//')          ;;
      *)           echo "don't know how to extract '$1'..."          ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}

# Check SSH key strength.
checkkeystrength () {
  ssh-keygen -l -f $1 | sed 's/:.*@.* / /g'
}

# Show bash functions.
declarelist () {
  declare -F
}
# Edit bash function.
declareedit () {
  declare -f $1 | nvim -c ":set ft=bash"
}

# Based on Jeff Sheffield from https://stackoverflow.com/questions/18787375
extractrpm () {
  rpm2cpio $1 | cpio -idmv
}

searchcontacts () {
  grep -a2 -i $1 ~/contacts.vcf
}

# Fix formatting of text pasted from weechat
unweechat () {
  if [ -f $1 ] ; then
    sed -i '/-->/d' $1  # Remove enter/exit
    sed -i -E 's/ │.*$//g' $1  # Remove list of present users
    sed -i 's/[ \t]*$//' $1  # Remove trailing spaces
    sed -i 'N;s/\n *|//' $1  # (optional) Shift multline comments to one line
  else
    echo "'$1' is not a valid file!"
  fi
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

# RT Request Tracker
## Read a ticket without CSS.
rtread () {
	rt show ticket/$1/history -f content | less
}
rtemergingthreats2() {
  rt ls -o -Created -t ticket "Owner = 'Nobody' AND (  Status = 'new' OR Status = 'open' )" -f requestors | grep -v ^id | awk -F'[\t, ]+' '{for (i=2;i<=NF;i++) {printf "%s %s\n",$1, $i;}}' | grep -v -f ~/rt/spam/allowlist-like.txt | grep -v -f ~/rt/spam/allowlist-plain.txt > /tmp/nobodytickets.txt
  # Sort by frequency.
  awk '{ print $2 }' /tmp/nobodytickets.txt | sed '/^$/d' | sort | uniq -c | sort -n | sed '/^[[:blank:]]*[1][[:blank:]]/d' > /tmp/emergingaddresses.txt
  cat /tmp/emergingaddresses.txt
  # For each address, open a ticket in abrowser.
  while read i; do echo "$i" | awk '{ print $2 }' | xargs -I{} grep "{}" /tmp/nobodytickets.txt | head -n 1 | awk '{ print $1 }' | xargs -I{} abrowser https://rt.gnu.org/Ticket/Display.html?id={} 2>/dev/null; done < /tmp/emergingaddresses.txt
}
## Take and resolve a ticket.
rttr () {
	rt take $1 && rt resolve $1
}
## Show full headers for a ticket.
rtheaders () {
	rt show -l ticket/$1/attachments/$(rt show -l ticket/$1/attachments | grep Attachments | awk '{print $2}' | sed 's/:$//') | less
}

# These can easily become too much.  Especially if you use tmux or screen.  Pick
# zero, one or two.

# Ascii Art message
#toilet -f$(ls -1 /usr/share/figlet | grep flf | shuf -n 1) Boot Message
#toilet -fslant Boot Message
#echo

# 141 digits of pi
#pi 141
#echo

# Random three items from BSD calendar
#calendar | shuf -n 3
#echo

# Time since the UNIX epoch
#echo $(($(date +%s)/60/60/24/365)) years $(($(date +%s)/60/60/24- ($(date +%s)/60/60/24/365)*365 )) days $(($(date +%s)/60/60- ($(date +%s)/60/60/24)*24 )) hours $(($(date +%s)/60- ($(date +%s)/60/60)*60 )) minutes $(($(date +%s)- ($(date +%s)/60)*60 )) seconds since the UNIX epoch
#echo

# Refresh command information
#echo Did you know? ; whatis $(ls /bin | shuf -n 1)
#echo

# Phase of the Moon
#/usr/games/pom
#echo

# Daily fortune or anecdote
#/usr/games/fortune -s
#echo

# Tell a random joke from jokes.txt
echo -e $(shuf -n 1 jokes.txt)
echo
