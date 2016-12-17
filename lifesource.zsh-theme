PROMPT='$fg[green]♻  $fg[yellow]$(getPwd)$fg[magenta] $(gitPromptInfo) $fg[red]
$fg[green]~$fg[cyan]> $reset_color' 

function getPwd() {
    echo "${PWD/$HOME/~} "
}

function getSpacing() {

    local git=$(gitPromptInfo)
    if [ ${#git} != 0 ]; then
        ((git=${#git} - 1))
    else
        git=0
    fi

    local termwidth
    (( termwidth = ${COLUMNS} - 2 - ${#HOST} - ${#$(getPwd)} -${git} ))

    local spacing=""
    for i in {1..$termwidth}; do
        spacing="${spacing} "
    done
    echo $spacing
}

function gitPromptInfo() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function batteryCharge() {
    if [ -e ~/.vim/batteryCharge.py ] 
    then
        echo `python ~/.vim/batteryCharge.py` 
    else
        echo ''; 
    fi
}

ZSH_THEME_GIT_PROMPT_PREFIX="<"
ZSH_THEME_GIT_PROMPT_SUFFIX=">$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]+"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"
