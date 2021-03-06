# rbenv integration
# set PATH $HOME/.rbenv/bin $PATH
# set PATH $HOME/.rbenv/shims $PATH
# rbenv rehash >/dev/null ^&1
status --is-interactive; and source (rbenv init -|psub)

source $HOME/.cargo/env
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths

set -x HOMEBREW_NO_ANALYTICS 1

# aliases
alias b="bundle"
alias v="vim (fzf)"
alias ll="ls -la"

set -x LC_ALL en_US.UTF-8

export FZF_DEFAULT_COMMAND='ag -g ""'

#source ~/.config/fish/fish_prompt.fish

#set __fish_git_prompt_char_dirtystate '⚡️'

set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)
 
# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red
 
# # Status Chars
set -g __fish_git_prompt_char_dirtystate 'Ξ'
# set -g __fish_git_prompt_char_stagedstate '→'
# set -g __fish_git_prompt_char_untrackedfiles '…'
# set -g __fish_git_prompt_char_stashstate '●'
# set -g __fish_git_prompt_char_upstream_ahead '+'
# set -g __fish_git_prompt_char_upstream_behind '-'
# set -g __fish_git_prompt_char_conflictedstate '×'
# set -g __fish_git_prompt_char_cleanstate '✓'

# Status Chars
#set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)

  set_color normal
end



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/aurelian/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/aurelian/Downloads/google-cloud-sdk/path.fish.inc'; end
set -g fish_user_paths "/usr/local/opt/openjdk/bin" $fish_user_paths
