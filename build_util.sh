javac util/Util.java
jar cvf Util.jar util/Util.class
python ./cheerpj/cheerpjfy.py Util.jar
