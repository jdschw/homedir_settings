alias scpr="scp -r"
alias jgrep="grep -Ir --exclude=tags"
alias lst="ls -tr"
alias mount_amfs1='sudo smbmount //am-fs1.amthinking.net/applied_minds /mnt/am-fs1/ -o"username=jdschwartz,uid=1000,gid=1000,file_mode=0666,dir_mode=0775"'
alias mount_qnas='sudo smbmount //clyde.amthinking.net/ace_logs ~/qnas_logs -o"username=ace,password=ace,uid=1000,gid=1000,file_mode=0666,dir_mode=0775"'
alias mount_field='sudo smbmount //10.100.30.20/ace_logs ~/qnas_logs -o"username=ace,password=ace,uid=1000,gid=1000,file_mode=0666,dir_mode=0775"'
alias vi="~/src/vim/src/vim"
alias vim="~/src/vim/src/vim"
alias gvim="~/src/vim/gvim"
alias go="cd ~/src/ng_gv_3d/src/pt_cloud_fusion"
alias git_brclean='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias git_originclean='git branch -a --merged | grep -v "\*" | sed -e "s#.*/#:#" | xargs --verbose -n 1 git push origin'
