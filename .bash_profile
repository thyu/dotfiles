#!/bin/bash

DOTFILES_DIR="$( cd "$( dirname "$0" )" && pwd )"

##==============================================================================
##	Install Synth-shell selectively
##==============================================================================
source $DOTFILES_DIR/scripts/synth-shell/synth-shell/alias.sh
source $DOTFILES_DIR/scripts/synth-shell/synth-shell/better-history.sh
source $DOTFILES_DIR/scripts/synth-shell/synth-shell/better-ls.sh
source $DOTFILES_DIR/scripts/synth-shell/synth-shell/synth-shell-prompt/synth-shell-prompt/synth-shell-prompt.sh

##==============================================================================
## Shortcuts	
##==============================================================================

alias dl="cd $HOME/Downloads"
alias desk="cd $HOME/Desktop"
alias home="cd $HOME"
alias code="cd $HOME/code"
