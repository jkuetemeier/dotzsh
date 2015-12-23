# custom configuration and functions from Jörg Kütemeier

###
# detect os
#

if [[ `uname` == 'Linux' ]]
then
        export LINUX=1
        export GNU_USERLAND=1
else
        export LINUX=
fi

if [[ `uname` == 'Darwin' ]]
then
        export OSX=1
else
        export OSX=
fi

# Detect Macports GNU userland installation
if [[ "$OSX" == "1" ]]
then
    if [[ -e /opt/local/libexec/gnubin ]]
    then
        export GNU_USERLAND=1
    fi
fi

# load our own completion functions
if [ -e ~/.zsh/completion ]; then
  fpath=(~/.zsh/completion $fpath)
fi


# enable colored output from ls, etc
export CLICOLOR=1

# ls color option for linux (default, Ubuntu defaults)
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:'
# ls color opitons for mac (bsd) - default osx
export LSCOLORS=exfxcxdxbxegedabagacad


# vi mode
# enable vim mode on command line
bindkey -v
bindkey "^F" vi-cmd-mode
bindkey jj vi-cmd-mode
#bindkey jk vi-cmd-mode

# add missing vim hotkeys
# fixes backspace deletion issues
# http://zshwiki.org/home/zle/vi-mode
bindkey -a u undo
bindkey -a '^R' redo
bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char

# history search in vim mode
# http://zshwiki.org/home/zle/bindkeys#why_isn_t_control-r_working_anymore
bindkey -M viins '^s' history-incremental-search-backward
bindkey -M vicmd '^s' history-incremental-search-backward

# handy keybindings
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^R" history-incremental-search-backward
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word


# bindkey "^[[5~" up-line-or-history
# bindkey "^[[6~" down-line-or-history
# bindkey "^[[H" beginning-of-line
# bindkey "^[[1~" beginning-of-line
# bindkey "^[[F"  end-of-line
# bindkey "^[[4~" end-of-line
# bindkey ' ' magic-space    # also do history expansion on space
# bindkey '^I' complete-word # complete on tab, leave expansion to _expand
#

setopt no_beep correct complete_in_word
setopt long_list_jobs           # Show pid in bg job list
setopt no_hist_beep             # Don not beep on history expansion errors
setopt interactive_comments     # Comments in history
setopt prompt_subst             # Prompt more dynamic, allow function in prompt

# directory stack
# more info: http://zsh.sourceforge.net/Intro/intro_6.html
# hint: use 'd', 'po', 'pu' and 'cd -4'
export DIRSTACKSIZE=8
setopt autopushd pushdminus pushdsilent pushdtohome

# Report to me when other people login/logout
watch=(notme)

# shell
export SHELL=`which zsh`

# Timezone
export TZ='Europe/Berlin'

# alias l="ls -la"
alias v="$EDITOR"

if which vim &>/dev/null ; then
  alias vi=vim
fi

if which mvim &>/dev/null ; then
  alias m=mvim
fi

alias gitignore="curl -O https://gist.githubusercontent.com/jkuetemeier/98900a7ea5e9e419687e/raw/9970221619c469dd01da86715e402facfedc22b2/.gitignore"

# Determine if the terminal supports 256 colors
if [[ `tput colors` == "256" ]]; then
  export TERM=screen-256color
else
  export TERM=xterm-color
fi

if [[ "$OSX" == "1" ]]; then
  # Sublime Text aliases
  alias subl2="'/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl'"
  alias subl="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
fi


# LS colors, made with http://geoff.greer.fm/lscolors/
export LSCOLORS="Gxfxcxdxbxegedabagacad"
export LS_COLORS='no=00:fi=00:di=01;34:ln=00;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=41;33;01:ex=00;32:*.cmd=00;32:*.exe=01;32:*.com=01;32:*.bat=01;32:*.btm=01;32:*.dll=01;32:*.tar=00;31:*.tbz=00;31:*.tgz=00;31:*.rpm=00;31:*.deb=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.lzma=00;31:*.zip=00;31:*.zoo=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.tb2=00;31:*.tz2=00;31:*.tbz2=00;31:*.avi=01;35:*.bmp=01;35:*.fli=01;35:*.gif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mng=01;35:*.mov=01;35:*.mpg=01;35:*.pcx=01;35:*.pbm=01;35:*.pgm=01;35:*.png=01;35:*.ppm=01;35:*.tga=01;35:*.tif=01;35:*.xbm=01;35:*.xpm=01;35:*.dl=01;35:*.gl=01;35:*.wmv=01;35:*.aiff=00;32:*.au=00;32:*.mid=00;32:*.mp3=00;32:*.ogg=00;32:*.voc=00;32:*.wav=00;32:'

if [ -e /usr/local/bin/gls ]; then alias ls="/usr/local/bin/gls --color='auto'"; fi

if [ -e $HOME/perl5 ]; then
  PERL_MB_OPT="--install_base \"$HOME/perl5\""; export PERL_MB_OPT;
  PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;
  export PERL5LIB="$HOME/perl5/lib/perl5"
fi

# go

# go on MAC (homebrew)
if [ -e /usr/local/opt/go/libexec/bin ]; then
  export GOPATH=$HOME/go
  export GOBIN=$HOME/go/bin
  export PATH=$GOBIN:$PATH:/usr/local/opt/go/libexec/bin
fi

# go on CentOS (yum)
if [ -e /usr/bin/go ]; then
  export GOPATH=$HOME/go
  export GOBIN=$HOME/go/bin
  export PATH=$GOBIN:$PATH
fi

# go with native package install from golang.org
if [ -e /usr/local/go ]; then
  export GOPATH=$HOME/go
  export GOBIN=$HOME/go/bin
  export PATH=$GOBIN:/usr/local/go/bin:$PATH
fi

# packer in project dir
if [ -e ~/projects/packer ]; then
  export PATH=~/projects/packer:$PATH
fi

# no interactive 'rm'
unalias rm
alias rm='nocorrect rm'

#---
# better g (git) command
#
# No arguments: `git status`
# With arguments: acts like `git`

# Notice: don't move it to functions/g, because this will not work
# with the prezto 'git' module

# important: git module sets an alias
unalias g
g() {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status
  fi
}
autoload g

# Complete g like git
compdef g=git
