OUT_FOLDER="./public"
if [ "$1" != "" ]; then
  OUT_FOLDER=$1
fi

if [ -d "$OUT_FOLDER" ]; then
  echo "Output folder $OUT_FOLDER already exists"
  rm -rf $OUT_FOLDER
fi
mkdir -p $OUT_FOLDER

cp -r ./asm ./$OUT_FOLDER/asm
cp *.jar *.jar.js *.js *.html *.list ./$OUT_FOLDER/
