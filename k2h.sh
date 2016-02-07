cat $2 | iconv -f utf8 -t shift-jis -c | kakasi -JH -KH -Ea -s | iconv -f shift-jis -t utf8 -c > $(echo $2 | sed 's@.srt@_hiragana.srt@g') 

# As a note, I download the Japanese subs from http://kitsunekko.net/dirlist.php?dir=subtitles%2Fjapanese and you could probably need subsync ( https://github.com/spion/subsync ) 

# Example: 
# $ k2h.sh Episode.mkv Subs.srt 

#Bonus: It auto starts mpv without creating the srt for hiragana. My personal choice. 
#mpv "$1" --sub-file="$2" --sub-file=<(cat $2 | iconv -f utf8 -t shift-jis -c | kakasi -JH -KH -Ea -s | iconv -f shift-jis -t utf8 -c) --sid=1 --secondary-sid=2
