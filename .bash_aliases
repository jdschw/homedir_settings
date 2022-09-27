alias jgrep="grep -Ir --exclude=tags"
alias lst="ls -tr"
alias go="cd ~/src/driving"
alias desk="ssh jschwartz@172.16.214.198"

alias ctags="`brew --prefix`/bin/ctags"

nvfind() { nvim `find . -name .git -prune -o -perm -200 -type f -iname '*'$1'*' -exec grep -Il . {} \;`; }
vfind() { vim `find . -name .git -prune -o -name build* -prune -o -writable -type f -iname *$1* -exec grep -Il . {} \;`; }

# When using named branches, this is a convenient way to scrub your old, merged
# branches from the system.  The first command cleans them up locally, and the
# second one cleans them up on the origin remote.

git_brclean() {
    if [[ $# -eq 0 ]]
        then
            echo 'You must provide a branch prefix!'
    else
        git branch --merged | grep -v "\*" | grep -i "$@" | xargs -n 1 git branch -d;
    fi
}
git_originclean() {
    if [[ $# -eq 0 ]]
        then
            echo 'You must provide a branch prefix!'
    else
        git branch -a --merged | grep -v "\*" | grep -v "HEAD" | grep -i "/$@" | sed -e "s#.*/$@#:$@#" | xargs --verbose -n 1 git push origin;
    fi
}
