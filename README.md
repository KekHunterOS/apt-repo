## General info
### Why i made it
* This apt repository is made for nethunter arm64 based chroots. The main reason i created it is to add these old packages that were useful for the nhapp and chroot itself
### Can this repo be trusted?
* Yes and No as people are different. From my view it can be trusted as everuthing is open source.
* Link to the unextracted packages that are used here: https://github.com/KekHunterOS/apt-repo-source
* Also things to keep in mind. This repo is maintained by one person for now and its beign done by my own free time.

## Additional info
* This still depends on kali official apt repository!!

### INFO (Only comaptible with)
OS    | Distro  | ARCH  | Version
-----:|:-------:|:-----:|:--------
Kali  | Rolling | ARM64 | 2020.4
kali  | rolling | AMD64 | 2020.4
kali  | rolling | ARMHF | 2020.4
### Adding this repo
##### Make sure that u have updated and upgraded kali distro/chroot
###### Adding the repository
```
echo "deb [trusted=yes] https://raw.githubusercontent.com/KekHunterOS/apt-repo/bleeding-edge/ kek bleeding-edge" | sudo tee -a /etc/apt/sources.list
```
###### Updating and installing mitmf package for the example
* Updating and upgrading
* Thing to note is some packages will overwrite official packages, but it shouldnt breake anything.
```
apt update && apt full-upgrade

apt install mitmf
```
* If u have some porblems with apt overwrite then use this command
```
sudo apt-get -o Dpkg::Options::="--force-overwrite" install PACKAGES
```
### Credits
* @S133py | for better commands to add repo into sources.list
* Offsec | for 2017.2 kali packages i use (http://old.kali.org/kali/dists/)
* ThunderStrike community | for tsfconsole aka ThunderStrike-FrameWork
