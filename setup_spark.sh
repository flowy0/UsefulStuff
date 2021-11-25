# this assumes homebrew and conda are installed 


# install spark locally 
brew install java scala apache-spark
echo -e 'SPARK_HOME=/usr/local/Cellar/apache-spark/3.1.1/libexec ' >> ~/.zshrc
echo -e 'PATH="$SPARK_HOME/bin/:$PATH"' >> ~/.zshrc
echo -e 'export PATH="/usr/local/opt/openjdk/bin:$PATH"' >> ~/.zshrc

# conda env
conda create -n spark python=3.8
conda activate spark
pip install pyspark

# for m1 mac
# brew install java11 scala apache-spark
# echo 'export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"' >> ~/.zshrc
# echo 'export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"' >> ~/.zshrc
# sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

# echo -e 'SPARK_HOME=/opt/homebrew/Cellar/apache-spark/3.2.0/libexec' >> ~/.zshrc
# echo -e 'JAVA_HOME="/opt/homebrew/Cellar/openjdk@11/11.0.12' >> ~/.zshrc

# run example 
# cd /opt/homebrew/Cellar/apache-spark/3.2.0/ &&  ./bin/spark-submit $SPARK_HOME/examples/src/main/python/pi.py 10

