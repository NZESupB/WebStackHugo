if [ -d "themes/WebStack-Hugo" ]; then
  cd themes/WebStack-Hugo && git pull && cd ../../ && git pull && hugo
else
  git clone https://github.com/shenweiyan/WebStack-Hugo.git themes/WebStack-Hugo && git pull && hugo
fi
