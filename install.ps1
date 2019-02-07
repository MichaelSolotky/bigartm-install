mkdir C:\BigARTM
cd C:\BigARTM
wget "https://ci.appveyor.com/api/projects/bigartm/bigartm/artifacts/BigARTM.7z?branch=stable&job=Environment%3A%20PYTHON_VERSION%3D3.6%2C%20MINICONDA%3DC%3A%5CMiniconda37-x64" -OutFile "$pwd\BigARTM.7z"
7z.exe x .\BigARTM.7z

cd protobuf\python
python.exe setup.py build
python.exe setup.py install

cd C:\BigARTM\python
python setup.py install

# TBD: figure out how to do this properly with powershell
# $env:PATH += ";C:\BigARTM\bin"
