starship init fish | source

alias cat="bat --paging=never --theme=\$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub)"
alias l="ls -la"
alias ls="eza --color=always --git --icons=auto"

fzf --fish | source

export FZF_CTRL_T_OPTS="
 --style full
 --walker-skip .git,node_modules,target
 --preview 'bat -n --color=always {}'
 --bind 'ctrl-/:change-preview-window(down|hidden)'"

export FZF_CTRL_R_OPTS="
   --bind 'ctrl-c:execute-silent(echo -n {2..} | pbcopy)+abort'
   --color header:italic
   --header 'Press CTRL-Y to copy command into clipboard'"
