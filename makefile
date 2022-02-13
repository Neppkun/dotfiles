list:
	@echo polybar pfetch omz_theme neofetch

all: polybar pfetch omz_theme neofetch 

.PHONY: polybar pfetch omz_theme neofetch

neofetch: 
	cp neofetch.conf ~/.config/neofetch/config.conf
pfetch:
	cp pfetch.conf ~/.pfetch.conf
	if [["$(grep "source .pfetch.conf" ~/.bashrc)" == ""]]; then; echo "source .pfetch.conf" >> ~/.bashrc; fi
omz_theme:
	git clone https://github.com/zpm-zsh/colors ~/.oh-my-zsh/custom/plugins/colors
	sed -e "s/plugins\=\(git\)/plugins\=\(git colors\)/" ~/.zshrc
	cp omz-theme.zsh-theme ~/.oh-my-zsh/themes/neppkunTheme.zsh-theme
	sed -e "s/ZSH_THEME\=\"\"/ZSH_THEME\=\"neppkunTheme\"/" ~/.zshrc
polybar:
	cp polybar ~/.config/polybar/config

