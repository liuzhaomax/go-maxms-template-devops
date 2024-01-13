if test -f /etc/profile.d/git-sdk.sh
then
	TITLEPREFIX=SDK-${MSYSTEM#MINGW}
else
	TITLEPREFIX=$MSYSTEM
fi

if test -f ~/.config/git/git-prompt.sh
then
	. ~/.config/git/git-prompt.sh
else
	PS1='\[\033]0;Bash\007\]'      # 窗口标题
	PS1="$PS1"'\n'                 # 换行
	PS1="$PS1"'\[\033[32;1m\]'     # 指下一行的颜色绿色
	PS1="$PS1"' [`date "+%Y-%m-%d %H:%M:%S"`] '  # 时间
	PS1="$PS1"'\[\033[36;1m\]'     # 指下一行的颜色青色
  PS1="$PS1"'\u@\h '             # 用户名
#  PS1="$PS1"'liuzhao '           # 用户名
	PS1="$PS1"'\[\033[35;1m\]'     # 指下一行的颜色紫色
	PS1="$PS1"'➜  '               # unicode 字符，右箭头
	PS1="$PS1"'\[\033[33;1m\]'     # 指下一行的颜色黄色
	PS1="$PS1"'\W'                 # 当前目录
	if test -z "$WINELOADERNOEXEC"
	then
		GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
		COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
		COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
		COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
		if test -f "$COMPLETION_PATH/git-prompt.sh"
		then
			. "$COMPLETION_PATH/git-completion.bash"
			. "$COMPLETION_PATH/git-prompt.sh"
			PS1="$PS1"'\[\033[34m\]'   # 指下一行的颜色蓝色
			PS1="$PS1"'`__git_ps1`'    # 分支
		fi
	fi
	PS1="$PS1"'\[\033[37m\]'     # 指下一行的颜色白色
	PS1="$PS1"'\n'               # new line
	PS1="$PS1"'=> '
fi

MSYS2_PS1="$PS1"               # for detection by MSYS2 SDK's bash.basrc
 
# Evaluate all user-specific Bash completion scripts (if any)
if test -z "$WINELOADERNOEXEC"
then
	for c in "$HOME"/bash_completion.d/*.bash
	do
		# Handle absence of any scripts (or the folder) gracefully
		test ! -f "$c" ||
		. "$c"
	done
fi

