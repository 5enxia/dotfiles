# Path to Oh My Fish install.
set -gx OMF_PATH $HOME/.local/share/omf


# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG $HOME/.config/omf


# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# fish theme
set fish_theme agnoster


# ls/cd
alias c='cd ../'
function mkcd
    mkdir -p $argv; cd $argv;
end

alias sl='ls -CF'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'


# powerline-shell
function fish_prompt
    ~/.local/bin/powerline-shell --shell bare $status
end


# python
alias py='python3'
set PATH $HOME/.pyenv/shims $PATH
eval (pyenv init - | source)


# ssh/scp
alias ssh-ito='ssh -i ~/.ssh/ito -l o70664d ito.cc.kyushu-u.ac.jp'


# vi/vim/nvim
