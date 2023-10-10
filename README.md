# Pandemonium's dotfiles

My awesome dotfiles, because they're awesomes, because I'm Batman.

## Getting Started

Ce projet regroupe l'ensemble des dotfiles que j'utilise au quotidien.

### Prerequisites

Certain alias ne sont efficaces que si les logiciels qu’ils référencent sont installés sur la machine. Pour installer les logiciels nécéssaires utilisé la commande ci-dessous.

Il s'agit de ma "One line install" pour debian 9.

```sh
sudo apt update && sudo apt install build-essential cowsay curl dkms dnsutils fonts-powerline git gitk htop libfortune-perl man mlocate module-assistant net-tools nmap powerline sudo tmux tree unzip vim zsh
```

Il faut aussi que [oh-my-zsh](http://ohmyz.sh/) soit installé ainsi que les plugins zsh-autosuggestions zsh-syntax-highlighting.

```sh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

Il faut aussi que [tmuxifier](https://github.com/jimeh/tmuxifier) soit installé.

```sh
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
```

### Installing

L'installation se déroule de la manière suivante.

```sh
cd ~
ssh $(whoami)@localhost
exit
mkdir -p ~/git/Pandemonium1986
cd  ~/git/Pandemonium1986
git clone https://github.com/Pandemonium1986/dotfiles
cd dotfiles
./install.sh all
source ~/.zshrc
```

## Authors

* **Jérémy Baumgarth** - *Initial work* - [jebovic](https://github.com/jebovic)
* **Michael Maffait** - *Customize* - [Pandemonium1986](https://github.com/Pandemonium1986)
