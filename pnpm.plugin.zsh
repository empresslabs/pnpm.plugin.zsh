if ! (($+commands[pnpm])); then
  return 0
fi

### ALIASES ###
alias pn='pnpm'

# Packages
alias pna='pnpm add'
alias pnad='pnpm add --save-dev'
alias pnap='pnpm add --save-peer'
alias pnrm='pnpm remove'
alias pnin='pnpm install'
alias pnun='pnpm uninstall'
alias pnls='pnpm list'
alias pnout='pnpm outdated'
alias pnau='pnpm audit'
alias pnwhy='pnpm why'
alias pnui='pnpm update --interactive'
alias pnuil='pnpm update --interactive --latest'

# Global packages
alias pnga='pnpm add --global'
alias pngls='pnpm list --global'
alias pngrm='pnpm remove --global'
alias pngu='pnpm update --global'

# Scripts
alias pnrun='pnpm run'
alias pnd='pnpm run dev'
alias pnb='pnpm run build'
alias pns='pnpm run serve'
alias pnst='pnpm start'
alias pnt='pnpm test'
alias pntc='pnpm test --coverage'
alias pnln='pnpm run lint'
alias pnlnf='pnpm run lint --fix'
alias pndoc='pnpm run doc'

# Miscs
alias pnh='pnpm help'
alias pni='pnpm init'
alias pnset='pnpm setup'
alias pnpub='pnpm publish'
alias pnsv='pnpm server'
alias pnx='pn dlx'

# Standardized $0 handling
# https://zdharma-continuum.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# For zsh plugin managers that don't set $ZSH_CACHE_DIR for oh-my-zsh compatibility, like zi
# This is temporary, since I didn't see how it really works
if [[ -z "$ZSH_CACHE_DIR" ]]; then
  mkdir -p "${XDG_CACHE_HOME:-$HOME/.cache}/zsh/completions"
  ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/zsh"
fi

# If the completion file doesn't exist yet, we need to autoload it and
# bind it to `pnpm`. Otherwise, compinit will have already done that.
if [[ ! -f "$ZSH_CACHE_DIR/completions/_pnpm" ]]; then
  typeset -g -A _comps
  autoload -Uz _pnpm
  _comps[pnpm]=_pnpm
fi

{
  # `pnpm completion` is only available from 9.0.0 onwards
  if zstyle -t ':completion:plugins:pnpm' legacy-completion || \
    ! is-at-least 9.0.0 "$(command pnpm --version)"; then
        command cp "${0:h}/completions/_pnpm" "$ZSH_CACHE_DIR/completions/_pnpm"
      else
        command pnpm completion zsh | tee "$ZSH_CACHE_DIR/completions/_pnpm" > /dev/null
  fi
} &|
