alias jgrep="grep -Ir --exclude=tags"
alias lst="ls -tr"
alias mount_drive='sudo mount -t cifs //fs.ai.appliedinvention.com/Applied_Invention /mnt/am-fs1/ -o"username=jdschwartz,uid=1000,gid=1000,file_mode=0666,dir_mode=0775"'
alias go="cd ~/src/Systems"
alias ms_regen="python ../state_machine/autocode_state_machine.py --state-machine mission_state_machine.yaml --out mission_state_machine && git clean -f . -e *.html"

gvfind() { gvim `find . -name .git -prune -o -name build* -prune -o -writable -type f -iname *$1* -exec grep -Il . {} \;`; }
nvfind() { nvim `find . -name .git -prune -o -name build* -prune -o -writable -type f -iname *$1* -exec grep -Il . {} \;`; }
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

alias mount_logs='sudo mount -t cifs //10.32.10.32/Logs /mnt/logs -o uid=1000,username="Nest0",password="takeoff1",nounix'

# Deployment-related aliases

alias autocode="scons fetch_autocode variants=host"
