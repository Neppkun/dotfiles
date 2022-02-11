function check_last_exit_code() {
  local LAST_EXIT_CODE=$?
  if [[ $LAST_EXIT_CODE -ne 0 ]]; then
    local EXIT_CODE_PROMPT=' '
    EXIT_CODE_PROMPT+="\n%{$c[cyan]%}%{$c[bold]%}┌─%{$c[reset]%}%{$c[white]%}%{$c[bold]%}[$USERNAME@$HOST]%}%{$c[reset]%}%{$c[cyan]%}%{$c[bold]%}─%{$c[reset]%}%{$c[yellow]%}%{$c[bold]%}($PWD)%{$c[reset]%}\n%{$c[cyan]%}%{$c[bold]%}└─%{$c[reset]%}%{$c[red]%}%{$c[bold]%}(T_T)%{$c[green]%}%{$c[bold]%}-%{$c[reset]%}%{$c[cyan]%}%{$c[bold]%}[$]%}%{$c[reset]%} "
    echo "$EXIT_CODE_PROMPT"
  else
    local EXIT_CODE_PROMPT=' '
    EXIT_CODE_PROMPT+="\n%{$c[cyan]%}%{$c[bold]%}┌─%{$c[reset]%}%{$c[white]%}%{$c[bold]%}[$USERNAME@$HOST]%}%{$c[reset]%}%{$c[cyan]%}%{$c[bold]%}─%{$c[reset]%}%{$c[yellow]%}%{$c[bold]%}($PWD)%{$c[reset]%}\n%{$c[cyan]%}%{$c[bold]%}└─%{$c[reset]%}%{$c[green]%}%{$c[bold]%}(^_^)%{$c[green]%}%{$c[bold]%}-%{$c[reset]%}%{$c[cyan]%}%{$c[bold]%}[$]%}%{$c[reset]%} "
    echo "$EXIT_CODE_PROMPT"
  fi
}

PROMPT='$(check_last_exit_code)'
