apt install hugo -y
if [ -d "themes/WebStack-Hugo" ]; then
  cd themes/WebStack-Hugo && git pull && cd ../../ && git pull --force && hugo
else
  git clone https://github.com/shenweiyan/WebStack-Hugo.git themes/WebStack-Hugo && git pull && hugo
fi

if ! crontab -l | grep -q 'build.sh'; then
    (crontab -l 2>/dev/null; echo "0 0 * * * cd /home/WebStackHugo && bash build.sh >> /home/wshugouautoupdate.log 2>&1") | crontab -
fi