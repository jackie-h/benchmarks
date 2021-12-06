Install on Rhel 

    1  sudo yum install python3 (installs older Python 3.6)
    
    To install newer version
    sudo yum groupinstall "Development Tools"
    sudo yum install gcc openssl-devel bzip2-devel libffi-devel zlib-devel
    sudo yum install wget
    wget https://www.python.org/ftp/python/3.9.6/Python-3.9.6.tgz
    
    tar xzf Python-3.9.6.tgz
    cd Python-3.9.6
    sudo ./configure --enable-optimizations
    sudo make altinstall
    python3.9 --version
    
    sudo yum install @python39

    
    2  sudo yum install git
    
Pyperformance Benchmark
    
    3  sudo python3 -m pip install pyperformance
    4  sudo dnf install python3-devel
    5  python3 -m pyperformance run -o output.json

Numpy benchmark

    1  git clone https://github.com/numpy/numpy
    2  python3.9 -m pip install cpython
    3  python3.9 -m pip install Cython
    4  python3.9 -m pip install asv
    5  python3.9 -m pip install virtualenv
    6  python3.9 runtests.py --bench 


Intel MKL

python3.9 -m pip install mkl-devel



