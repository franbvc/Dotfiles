### EXPORT ###
set fish_greeting

### SET EITHER DEFAULT EMACS MODE OR VI MODE ###
function fish_user_key_bindings
  # fish_default_key_bindings
  fish_vi_key_bindings
end
### END OF VI MODE ###

### ALIASES ###

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# ls to exa
alias ls="exa --icons --color=always --group-directories-first"
alias la="exa -al --icons --color=always --group-directories-first"
alias ll="exa -l --icons --color=always --group-directories-first"
alias lt="exa -aT --icons --color=always --group-directories-first"
alias l.="exa -a --icons | egrep "^\."" 

# text editors
alias vim="nvim"
alias emacs="emacsclient -c -a 'nvim'"

# icat (visualize images in kitty terminal)
alias icat="kitty +kitten icat"

# get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cpp="cp"
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# pacman and yay
alias pacsyu='sudo pacman -Syu'   # update only standard pkgs
alias pacsyyu='sudo pacman -Syyu' # Refresh pkglist & update standard pkgs
alias cleanup='sudo pacman -Rns (pacman -Qtdq)' # remove orphaned packages
alias pacq="pacman -Q"
alias pacsearch="pacman -Ss" 

# restart network manager wifi
alias restart-wifi="nmcli r wifi off && nmcli r wifi on"

# speedtest
alias speedtest="speedtest --simple"

### STARTUP ###

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

# start starship prompt
starship init fish | source

### FUNCTIONS ### 
function update-dotfiles --description 'Pull Dotfiles repository and copy local config files to it'
    cd $HOME/Dotfiles && git pull

    # Copy Doom config files
    cp $HOME/.doom.d/config.el   $HOME/Dotfiles/doom
    cp $HOME/.doom.d/init.el     $HOME/Dotfiles/doom
    cp $HOME/.doom.d/packages.el $HOME/Dotfiles/doom

    # Copy Fish config files
    cp $HOME/.config/fish/config.fish $HOME/Dotfiles/fish
    cd $HOME/.config/fish/themes
    cp * $HOME/Dotfiles/fish/themes
    
    # Copy Qtile config files
    cp $HOME/.config/qtile/config.py        $HOME/Dotfiles/qtile-new
    cp $HOME/.config/qtile/color_palette.py $HOME/Dotfiles/qtile-new
    cd $HOME/.config/qtile/icons
    cp * $HOME/Dotfiles/qtile-new/icons

    # Copy starship config files
    cp $HOME/.config/starship.toml $HOME/Dotfiles/starship.toml
    
    # Copy Neovim config files
    cp $HOME/.config/nvim/init.vim $HOME/Dotfiles/nvim/init.vim

    # Copy Kitty config files
    cp $HOME/.config/kitty/current-theme.conf $HOME/Dotfiles/kitty
    cp $HOME/.config/kitty/kitty.conf         $HOME/Dotfiles/kitty
    cp $HOME/.config/kitty/kitty.conf.bak     $HOME/Dotfiles/kitty
    cp $HOME/.config/kitty/'Tokyo Night.conf' $HOME/Dotfiles/kitty
    cd $HOME
end





