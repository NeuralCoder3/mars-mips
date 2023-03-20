OUT_FOLDER="./public"
if [ "$1" != "" ]; then
  OUT_FOLDER=$1
fi

if [ -d "$OUT_FOLDER" ]; then
  echo "Output folder $OUT_FOLDER already exists"
  rm -rf $OUT_FOLDER
fi
mkdir -p $OUT_FOLDER

cp -r ./util ./asm ./$OUT_FOLDER/
cp *.jar *.js *.html *.list ./$OUT_FOLDER/
