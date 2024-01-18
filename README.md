# **Tutorial**

This project is a project that contains an Automation Testing Script using the Selenium Robot Framework, to be able to run this script there are several things that need to be prepared, including:

- Install Python
- Install Pychrma IDE or VCode
- Install Selenium
- Install Robot Framework
- Install Robot Framework Selenium Library

## Install Python

### Windows
 Windows users can download Python at this link:
 https://www.python.org/downloads/

 Download and run the Python installer:
1. Select option `Add Python 3.X to PATH`
2. (optional) install to a sub-folder on root of your drive (e.g. C:\Python3.X)
3. Open a command line by
   - pressing `Windows key + R`
   - typing `cmd` and pressing `Enter`

   ```markdown
   python -V
   ```

### Linux 
 Open a Terminal by either
 1. pressing `Ctrl` + `Alt` + `T`
 2. pressing the `Windows key` and typing `terminal`
 3. right-clicking in your file explorer and selecting Open in `Terminal`

 ```markdown
 sudo apt update
sudo apt install python3 python3-pip
python3 -V
 ```

You should see something like this:

```markwdown 
Python 3.10.6
```

### MacOs
We will use Homebrew and pyenv to install Python.

Install homebrew

```markdown
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Follow instructions to add brew to path (Those are shown after homebrew installation)

```markdown
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

Install pyenv

```markdown
brew install pyenv
```

Add pyenv to Path

```markdown
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
eval "$(pyenv init -)"
```                                                                                                

Add Python Build Dependencies

```markdown
xcode-select --install
brew install openssl readline sqlite3 xz zlib tcl-tk
```

Install a Python 3.10.6

```markwdown
pyenv install 3.10.6
```

Tell pyenv to use Python 3.10.6 globally

```markdown
pyenv global 3.10.6
python --version
``````

You should see something like this:

```markdown
Python 3.10.6
```

## Install Pycharm

### Windows
https://www.jetbrains.com/pycharm/download/?section=windows

### MacOS
https://www.jetbrains.com/pycharm/download/?section=mac

### Linux
https://www.jetbrains.com/pycharm/download/?section=linux


## Install Selenium
```markdown
pip install selenium

pip uninstall selenium
```

## Install Robot Framework
```markdown
pip install robotframework
pip install --upgrade robotframework

pip uninstall robotframework

pip list
pip show robotframework
pip check robotframework 
```

## Install Robot framework Selenium Library
```markdown
pip install robotframework-seleniumlibrary

pip uninstall robotframework-seleniumlibrary
```


