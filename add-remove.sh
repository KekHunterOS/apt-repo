# THIS SCRIPT IS MADE BY HILLEDKINGED AND IS BEIGN USED BY HILLEDKINGED!!!

#
# Current packages list
#libjs-jquery mitmf python-argh python-asn1crypto python-attr python-automat python-certifi python-chardet python-click python-colorama python-configobj python-configparser python-constantly python-crypto python-dnspython python-enum34 python-flask python-future python-hyperlink python-idna python-impacket python-incremental python-ipy python-itsdangerous python-jinja2 python-lxml python-magic python-markupsafe python-netfilterqueue python-nfqueue python-olefile python-openssl python-pathtools python-pcapy python-pefile python-pil python-pyasn1 python-pyasn1-modules python-pyinotify python-requests python-scapy python-service-identity python-twisted-bin python-twisted-core python-twisted-web python-ua-parser python-urllib3 python-user-agents python-watchdog python-yaml python-zope.interface python-cryptography python-ipaddr python-ipaddress python-msgpack python-backports-shutil-get-terminal-size python-ipython-genutils python-traitlets python-simplegeneric python-pygments python-wcwidth python-prompt-toolkit python-scandir python-pathlib python-pathlib2 python-pickleshare python-ptyprocess python-pexpect python-decorator python-ipython ipython python-werkzeug

echo "deleting current packages by the list name"
reprepro --delete remove rolling libjs-jquery mitmf pyrit python-argh python-asn1crypto python-attr python-automat python-certifi python-chardet python-click python-colorama python-configobj python-configparser python-constantly python-crypto python-dnspython python-enum34 python-flask python-future python-hyperlink python-idna python-impacket python-incremental python-ipy python-itsdangerous python-jinja2 python-lxml python-magic python-markupsafe python-netfilterqueue python-nfqueue python-olefile python-openssl python-pathtools python-pcapy python-pefile python-pil python-pyasn1 python-pyasn1-modules python-pyinotify python-requests python-scapy python-service-identity python-twisted-bin python-twisted-core python-twisted-web python-ua-parser python-urllib3 python-user-agents python-watchdog python-yaml python-zope.interface python-cryptography python-ipaddr python-ipaddress python-msgpack python-backports-shutil-get-terminal-size python-ipython-genutils python-traitlets python-simplegeneric python-pygments python-wcwidth python-prompt-toolkit python-scandir python-pathlib python-pathlib2 python-pickleshare python-ptyprocess python-pexpect python-decorator python-ipython ipython python-werkzeug
echo "Adding same packages back with current list"
reprepro includedeb rolling ../apt-repo-packages/packages/*
