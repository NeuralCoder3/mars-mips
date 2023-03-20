FOLDER=cheerpj
if [ -d "$FOLDER" ]; then
  echo "CheerpJ already downloaded"
  exit 0
fi
URL=https://d3415aa6bfa4.leaningtech.com/cheerpj_linux_2.3.tar.gz
wget -O cheerpj.tar.gz $URL
tar -xzf cheerpj.tar.gz
mv cheerpj_2.3 $FOLDER
rm cheerpj.tar.gz
