# Fzf Configuration

# Set fzf default command
export FZF_DEFAULT_COMMAND="fd --hidden --follow"

# TRL-T - Paste the selected files and directories onto the command-line
# Set FZF_CTRL_T_COMMAND to override the default command
# Set FZF_CTRL_T_OPTS to pass additional options
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# ALT-C - cd into the selected directory
# Set FZF_ALT_C_COMMAND to override the default command
# Set FZF_ALT_C_OPTS to pass additional options
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type directory"

# Set fzf default options
export FZF_DEFAULT_OPTS="
--border
--height 50%
--layout=reverse
--inline-info
--preview '([[ -f {} ]] && (bat --style=numbers --color=always --line-range :500 {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
--color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
--prompt='∼ ' --pointer='▶' --marker='✓'
--bind '?:toggle-preview'
--bind 'ctrl-a:select-all'
--bind 'ctrl-y:execute-silent(echo {+} | pbcopy)'
--bind 'ctrl-e:execute(echo {+} | xargs -o vim)'
--bind 'ctrl-v:execute(code {+})'
"
