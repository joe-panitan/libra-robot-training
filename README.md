Install pyenv to separate python environment each project
```
brew install pyenv
```

Install python and switch to python 3.9.2
```
pyenv versions

pyenv install 3.9.2

pyenv versions

pyenv local 3.9.2

python --version
```

Check package on python 3.9.2
```
pip list
```

Install virtualenv to separate environment each project
```
pip install virtualenv

pip list
```

Install chrome and firefox driver
```
pip install webdrivermanager

webdrivermanager firefox chrome --linkpath /usr/local/bin

chromedriver --version
geckodriver --version
```

Create virtualenv for libra-training
```
virtualenv ./venv
```

Use virtualenv
```
source ./venv/bin/activate

python --version
pip list
```

Install package from requirements.txt file
```
pip install -r requirements.txt
```

