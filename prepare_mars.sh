JAR_URL=https://courses.missouristate.edu/kenvollmar/mars/MARS_4_5_Aug2014/Mars4_5.jar

# if folder mars/ does not exist, download and extract Mars.jar
if [ ! -d mars ]; then
    wget $JAR_URL -O Mars_original.jar

    # extract into mars/
    unzip Mars_original.jar -d mars

    # update mars with overwrites
    cp -r mars_update/* mars/
else
    echo "mars/ already exists"
fi
