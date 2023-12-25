alias bashalias='code ~/.bash_profile'
alias bashcolor='code ~/.minttyrc'
alias bashconfig='code /etc/profile.d/git-prompt.sh'
alias gitconfig='code ~/.gitconfig'

alias .='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias e='exit'
alias cls='clear'

alias i='git init' # 初始化git
# 仓库
alias pull='git pull' # 拉取最新代码
alias origin='git pull origin' # 从远程分支拉取最新代码
alias a='git add .' # 添加所有改动到暂存
alias c='git commit -m' # 将暂存区提交更新
alias ac='git commit -a -m' # 将暂存区提交更新
alias push='git push' # 推送到远程仓库
alias pf="git push -f" # 强制推送
alias feat='featFun() { git commit -m "feat: $1"; }; featFun' # commit feat
alias fix='fixFun() { git commit -m "fix: $1"; }; fixFun' # commit fix 
alias refactor='refactorFun() { git commit -m "refactor: $1"; }; refactorFun' # commit refactor
alias style='styleFun() { git commit -m "style: $1"; }; styleFun' # commit style
alias g='auto() { git add .; git commit -m "$1"; git push; }; auto' # 自动push
alias cp='cpFun() { git commit -m "$1"; git push; }; cpFun' # 自动commit push

# 查看
alias s='git status' # 查看状态
alias diff='git diff' # 对比改动
alias gs='git stash' # 暂时将未提交的变化移除
alias gsp='git stash pop' # 取出暂存

# 分支
alias gc="git checkout" # 切换分支
alias gcb="git checkout -b" # 创建并切换到新分支
alias bd="git branch -d" # 删除分支
alias merge="git merge" # 合并分支 
alias ma="git merge --abort" # 合并分支 


# 撤销
alias soft="git reset --soft HEAD^" # 撤销commit
alias reset='backHard() { git reset --hard $1; git push -f;}; backHard' # 回退任意版本
alias back='git reset --hard HEAD^ && git push -f' # 回退上个

# 修改
alias xiu="git commit --amend" # 修改commit信息
alias log="git log --pretty=format:'%h - %an, %ar : %s'" # 查看版本

alias host='code /c/Windows/System32/drivers/etc/hosts'

