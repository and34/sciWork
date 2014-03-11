/etc/update-manager/release-upgrades

sudo apt-get install make python-pip python-virtualenv virtualenvwrapper

wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz
tar xvf ta-lib-0.4.0-src.tar.gz
cd ta-lib/
./configure LDFLAGS="-lm"
make
sudo make install
echo "export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH" >> ~/.bashrc

pip install cython
pip install numpy
pip install pandas==0.12 #0.13 change internal structure of Series. Can't be intermixed with Numpy ndarray anymore
pip install TA-Lib
pip install deap==0.9.2
pip install repoze.lru==0.6



#Atlas version:
sudo apt-get install liblapack-dev
sudo apt-get install gfortran
workon [envname]
pip uninstall numpy ## only if numpy is already installed
pip uninstall scipy ## only if scipy is already installed
export LAPACK=/usr/lib/liblapack.so
export ATLAS=/usr/lib/libatlas.so
export BLAS=/usr/lib/libblas.so
pip install numpy
pip install scipy
