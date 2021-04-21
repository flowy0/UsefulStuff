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
