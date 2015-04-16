alias jgrep="grep -Ir --exclude=tags"
alias lst="ls -tr"
alias mount_drive='sudo mount -t cifs //fs.ai.appliedinvention.com/Applied_Invention /mnt/am-fs1/ -o"username=jdschwartz,uid=1000,gid=1000,file_mode=0666,dir_mode=0775"'
alias go="cd ~/src/MultiVehicleSimulator"
alias go2="cd ~/src/MultiVehicleSimulator/components/Systems"

gvfind() { gvim `find . -writable -type f -iname *$1* -exec grep -Il . {} \;`; }

# When using named branches, this is a convenient way to scrub your old, merged
# branches from the system.  The first command cleans them up locally, and the
# second one cleans them up on the origin remote.
alias git_brclean='git branch --merged | grep -v "\*" | grep -i "jeremy" | xargs -n 1 git branch -d'
alias git_originclean='git branch -a --merged | grep -v "\*" | grep -v "HEAD" | grep -i "/jeremy" | sed -e "s#.*/jeremy#:jeremy#" | xargs --verbose -n 1 git push origin'

alias mount_logs='sudo mount -t cifs //10.32.10.32/Logs /mnt/logs -o uid=1000,username="Nest0",password="takeoff1",nounix'
