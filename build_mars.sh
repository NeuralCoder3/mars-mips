# compiles all .java in mars/

cd mars
javac ./**/*.java
jar cmf mainclass.txt Mars.jar PseudoOps.txt Config.properties Syscall.properties Settings.properties MARSlicense.txt mainclass.txt MipsXRayOpcode.xml registerDatapath.xml controlDatapath.xml ALUcontrolDatapath.xml CreateMarsJar.bat Mars.java Mars.class docs help images mars 

# copy jar to parent directory
cp Mars.jar ../Mars.jar
