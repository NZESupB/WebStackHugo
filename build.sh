git pull
if [ -d "themes/WebStack-Hugo" ]; then
  cd themes/WebStack-Hugo && git pull
else
  git clone https://github.com/shenweiyan/WebStack-Hugo.git themes/WebStack-Hugo
fi