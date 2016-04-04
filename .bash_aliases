alias jgrep="grep -Ir --exclude=tags"
alias lst="ls -tr"
alias mount_drive='sudo mount -t cifs //fs.ai.appliedinvention.com/Applied_Invention /mnt/am-fs1/ -o"username=jdschwartz,uid=1000,gid=1000,file_mode=0666,dir_mode=0775"'
alias go="cd ~/src/Systems"
alias go2="cd ~/src/MultiVehicleSimulator"

gvfind() { gvim `find . -writable -type f -iname *$1* -and -not -path *.git* -exec grep -Il . {} \;`; }
vfind() { vim `find . -writable -type f -iname *$1* -and -not -path *.git* -exec grep -Il . {} \;`; }

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

alias mount_logs='sudo mount -t cifs //10.32.10.32/Logs /mnt/logs -o uid=1000,username="Nest0",password="takeoff1",nounix'
