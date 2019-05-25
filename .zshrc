# zplug
# ------------------------------------------------------------ #

# zplugを使う
source ~/.zplug/init.zsh

# zplugが無ければgitからclone
if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug
fi

# プラグイン
# -------------------------------------------------- #
# zplug "ユーザー名/リポジトリ名", タグ

# 補完を更に強化する
# pacman や yaourt のパッケージリストも補完するようになる
zplug "zsh-users/zsh-completions"

# git の補完を効かせる
# 補完＆エイリアスが追加される
zplug "plugins/git",   from:oh-my-zsh
zplug "peterhurford/git-aliases.zsh"

# あいまい入力補完
zplug "tarruda/zsh-fuzzy-match"

# 入力途中に候補をうっすら表示
zplug "zsh-users/zsh-autosuggestions"

# 入力補完 次の候補を予測する
# ctl-u が効かなくなる
# zplug "oknowton/zsh-dwim"
 
# コマンドを種類ごとに色付け
zplug "zsh-users/zsh-syntax-highlighting", defer:2
 
# ヒストリの補完を強化する
zplug "zsh-users/zsh-history-substring-search", defer:3

# 本体（連携前提のパーツ）
zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf
zplug "junegunn/fzf", as:command, use:bin/fzf-tmux

# fzf でよく使う関数の詰め合わせ
zplug "mollifier/anyframe"

# ディレクトリ移動を高速化（fzf であいまい検索）
zplug "b4b4r07/enhancd", use:init.sh

# git のローカルリポジトリを一括管理（fzf でリポジトリへジャンプ）
zplug "motemen/ghq", as:command, from:gh-r

zplug "mollifier/cd-gitroot"

# compinit 以降に読み込むようにロードの優先度を変更する
zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug "mrowa44/emojify", as:command

# テーマ
#zplug "yous/lime"
# -------------------------------------------------- #


# 自分自身をプラグインとして管理
zplug "zplug/zplug", hook-build:'zplug --self-manage'

# インストールしてないプラグインはインストール
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# コマンドをリンクして、PATH に追加し、プラグインは読み込む
zplug load
# ------------------------------------------------------------ #


autoload -U compinit
compinit



# alias
# ------------------------------------------------------------ #
export  HISTFILE=${HOME}/.zsh_history
# メモリに保存される履歴の件数
export  HISTSIZE=1000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=10000000

# 重複を記録しない
setopt hist_ignore_dups

# 開始と終了を記録
setopt EXTENDED_HISTORY


# cd && mkdir
function mkcd(){
  mkdir -p $1; cd $1
}

# some more ls aliases
alias sl='ls -CF'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias la='ls -a'
alias ll='ls -la'
alias l='ls'


# nvim
alias XDG_CONFIG_HOME=$HOME/.config/nvim/init/vim
alias v='vim'
alias vi='vim'
alias emacs='vim'

alias py='python3'

# cd
alias c='cd ../'

setopt auto_cd
# ------------------------------------------------------------ #
setopt prompt_subst # Make sure prompt is able to be generated properly.
