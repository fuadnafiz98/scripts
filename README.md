<h1 align="center">π° linux bits</h1>

## Initial setup

Make sure you make the `install.sh` file executable.

```bash
sudo chmod +x install.sh
```

Run `install.sh` to install all the scripts. By default scripts scripts will be installed in `/usr/bin/`

**Install all the tools**

```bash
./install.sh
```

## Tools

1. [π§Ύ Journal](#journal)
1. [π Battery Notifier](#battery-notifier)
1. [π Ocean](#ocean)


## <a id="journal"> π journal.sh

Create your own writting logs.


## <a id="battery-notifier"> π Battery Notifier

### battery-notifierπ
A battery notifier for ubuntu 

### Installation π

```bash
sudo apt update && sudo apt upgrade 
sudo apt install acpi 
sudo apt install zenity
```

## <a id="ocean"> Ocean

**Copied from @rwxrob**

### Installation

```bash
sudo apt install libcurses-perl
sudo cpan -I Term::Animation
```
