# Pandemonium's dotfiles
My awesome dotfiles, because they're awesomes, because I'm Batman.

## Getting Started
Ce projet regroupe l'ensemble des dotfiles que j'utilise au quotidien.

### Prerequisites
Certain alias ne sont efficaces que si les logiciels qu’ils référencent sont installés sur la machine. Pour installer les logiciels nécéssaires utilisé la commande ci-dessous.

Il s'agit de ma "One line install" pour debian 9.

```
sudo apt install vim build-essential module-assistant dkms sudo net-tools mlocate dnsutils nmap git gitk zsh curl powerline fonts-powerline tmux libfortune-perl cowsay resolvconf
```

### Installing
L'installation se déroule de la manière suivante.

```
cd ~
mkdir -p ~/git/Pandemonium1986
cd  ~/git/Pandemonium1986
git clone https://github.com/Pandemonium1986/dotfiles
ln -s ~/git/Pandemonium1986/dotfiles/.zshrc ~/.zshrc
ln -s ~/git/Pandemonium1986/dotfiles/.zshenv ~/.zshenv
```

## Authors
* **Jérémy Baumgarth** - *Initial work* - [jebovic](https://github.com/jebovic)
* **Michael Maffait** - *Customize* - [Pandemonium1986](https://github.com/Pandemonium1986)
