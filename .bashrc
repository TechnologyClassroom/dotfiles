# Partial configuration of .bashrc
# Michael McMahon
# This goes in your ~/.bashrc file.  After making a change, run ¨exec bash¨ to test results.

# dirtree is based on Maythux from http://askubuntu.com/questions/431251/how-to-print-the-directory-tree-in-terminal

alias feh='feh -FZ'
alias search='find / 2>/dev/null | grep -i $1'
alias searchhere='find . 2>/dev/null | grep -i $1'
alias dirtree='find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'

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
