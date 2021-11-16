# from https://developer.apple.com/metal/tensorflow-plugin/
# assuming miniforge is already installed

conda install -c apple tensorflow-deps
pip install tensorflow-macos
pip install tensorflow-metal

conda install -c pytorch pytorch torchvision
