# Partial configuration of .bashrc
# Michael McMahon
# This goes in your ~/.bashrc file.  After making a change, run ¨exec bash¨ to test results.

# This is too much.  Pick one or two.

# Ascii Art message
#toilet -f$(ls -1 /usr/share/figlet | grep flf | shuf -n 1) Boot Message
toilet -fslant Boot Message
echo \ 
# 141 digits of pi
#pi 141
#echo \ 
# Random three items from BSD calendar
calendar | shuf -n 3
echo \ 
# Refresh command information
#echo Did you know? ; whatis $(ls /bin | shuf -n 1)
#echo \ 
# Phase of the Moon
#/usr/games/pom
#echo \ 
# Daily fortune or anecdote
#/usr/games/fortune 
#echo \ 

alias feh='feh -FZ'
