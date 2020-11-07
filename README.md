## General info
### Why i made it
* This apt repository is made for nethunter arm64 based chroots. The main reason i created it is to add these old packages that were useful for the nhapp and chroot itself
### Can this repo be trusted?
* Yes and No as people are different. From my view it can be trusted as everuthing is open source.
* Link to the unextracted packages that are used here: https://github.com/KekHunterOS/apt-repo-source
* Also things to keep in mind. This repo is maintained by one person for now and its beign done by my own free time.

### INFO (Only comaptible with)
OS    | Distro  | ARCH  | Version
-----:|:-------:|:-----:|:--------
Kali  | Rolling | ARM64 | 2020.3+
### Adding this repo
##### Make sure that u have updated and upgraded kali distro/chroot
###### Adding the repository
```
echo "deb-src deb [trusted=yes] https://raw.githubusercontent.com/KekHunterOS/apt-repo/master/ rolling main" | sudo tee -a /etc/apt/sources.list
```
###### Updating and installing mitmf package for the example
* Updating and upgrading
* Thing to note is some packages will overwrite official packages, but it shouldnt breake anything.
```
apt update && apt full-upgrade

apt install mitmf
```
### Credits
* @S133py | for better commands to add repo into sources.list
* Offsec | for 2017.2 kali packages i use. 
* http://old.kali.org/kali/dists/2017.2/

### Packages (Main ones)
* Mana, Pyrit, OpenJDK-8
### Packages (All of them)
* libjs-jquery mitmf python-argh python-asn1crypto python-attr python-automat python-certifi python-chardet python-click python-colorama python-configobj python-configparser python-constantly python-crypto python-dnspython python-enum34 python-flask python-future python-hyperlink python-idna python-impacket python-incremental python-ipy python-itsdangerous python-jinja2 python-lxml python-magic python-markupsafe python-netfilterqueue python-nfqueue python-olefile python-openssl python-pathtools python-pcapy python-pefile python-pil python-pyasn1 python-pyasn1-modules python-pyinotify python-requests python-scapy python-service-identity python-twisted-bin python-twisted-core python-twisted-web python-ua-parser python-urllib3 python-user-agents python-watchdog python-yaml python-zope.interface python-cryptography python-ipaddr python-ipaddress python-msgpack python-backports-shutil-get-terminal-size python-ipython-genutils python-traitlets python-simplegeneric python-pygments python-wcwidth python-prompt-toolkit python-scandir python-pathlib python-pathlib2 python-pickleshare python-ptyprocess python-pexpect python-decorator python-ipython ipython python-werkzeug python-backports.functools-lru-cache python-soupsieve python-bs4 python-netaddr python-dnslib python3-chardet python3-impacket python3-netaddr python3-scapy python3-requests openjdk-8-jdk openjdk-8-jdk-headless openjdk-8-jre openjdk-8-jre-headless
