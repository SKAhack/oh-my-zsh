# Changing/making/removing directory
setopt auto_name_dirs
setopt auto_pushd
setopt pushd_ignore_dups

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cd/='cd /'

alias 1='cd -'
alias 2='cd +2'
alias 3='cd +3'
alias 4='cd +4'
alias 5='cd +5'
alias 6='cd +6'
alias 7='cd +7'
alias 8='cd +8'
alias 9='cd +9'

cd () {
  if   [[ "x$*" == "x..." ]]; then
    cd ../..
  elif [[ "x$*" == "x...." ]]; then
    cd ../../..
  elif [[ "x$*" == "x....." ]]; then
    cd ../../..
  elif [[ "x$*" == "x......" ]]; then
    cd ../../../..
  else
    builtin cd "$@"
  fi
}

alias md='mkdir -p'
alias rd=rmdir
alias d='dirs -v'

# http://subtech.g.hatena.ne.jp/secondlife/20080604/1212562182
# e.g) cdf .vim
function cdf() {
       local -a tmpparent; tmpparent=""
       local -a filename; filename="${1}"
       local -a file
       local -a num; num=0
       while [ $num -le 10 ]; do
               tmpparent="${tmpparent}../"
               file="${tmpparent}${filename}"
               if [ -f "${file}" ] || [ -d "${file}" ]; then
                       cd ${tmpparent}
                       break
               fi
               num=$(($num + 1))
       done
}

# mkdir & cd to it
function mcd() { 
  mkdir -p "$1" && cd "$1"; 
}

# http://subtech.g.hatena.ne.jp/secondlife/20080604/1212562182
# e.g) cdf .vim
function cdf() {
       local -a tmpparent; tmpparent=""
       local -a filename; filename="${1}"
       local -a file
       local -a num; num=0
       while [ $num -le 10 ]; do
               tmpparent="${tmpparent}../"
               file="${tmpparent}${filename}"
               if [ -f "${file}" ] || [ -d "${file}" ]; then
                       cd ${tmpparent}
                       break
               fi
               num=$(($num + 1))
       done
}

