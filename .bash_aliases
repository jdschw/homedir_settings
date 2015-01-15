alias scpr="scp -r"
alias jgrep="grep -Ir --exclude=tags"
alias lst="ls -tr"
alias mount_drive='sudo mount -t cifs //fs.ai.appliedinvention.com/Applied_Invention /mnt/am-fs1/ -o"username=jdschwartz,uid=1000,gid=1000,file_mode=0666,dir_mode=0775"'
alias go="cd ~/src/MultiVehicleSimulator"
alias git_brclean='git branch --merged | grep -v "\*" | grep -i "jeremy" | xargs -n 1 git branch -d'
alias git_originclean='git branch -a --merged | grep -v "\*" | grep -v "HEAD" | grep -i "jeremy" | sed -e "s#.*/jeremy#:jeremy#" | xargs --verbose -n 1 git push origin'
