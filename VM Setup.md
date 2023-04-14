Setting up some utilities in a linux VM

```
#JDK 
wget https://download.java.net/java/GA/jdk18/43f95e8614114aeaa8e8a5fcf20a682d/36/GPL/openjdk-18_linux-x64_bin.tar.gz
tar -xvf openjdk-18_linux-x64_bin.tar.gz
export PATH="/home/user/jdk-18/bin:$PATH"
export JAVA_HOME="/home/user/jdk-18"

#Maven
wget https://dlcdn.apache.org/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.tar.gz
tar -xvf apache-maven-3.8.5-bin.tar.gz
export PATH="/home/user/apache-maven-3.8.5/bin:$PATH"

