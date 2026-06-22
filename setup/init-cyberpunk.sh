#!/bin/bash

################################################################################
# Meta OS (TCN OS) - Cyberpunk Environment Initialization
# CRT Effects, Themes & Visual Configuration
################################################################################

set -e

# Color Palette
PURPLE='\033[38;5;135m'
CYAN='\033[36m'
BLUE='\033[34m'
RED='\033[31m'
GREEN='\033[32m'
YELLOW='\033[33m'
MAGENTA='\033[35m'
WHITE='\033[37m'
RESET='\033[0m'
BOLD='\033[1m'
DIM='\033[2m'

# Script Directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

echo -e "${CYAN}${BOLD}Initializing Cyberpunk Environment...${RESET}\n"

# Create configuration directory if it doesn't exist
mkdir -p "$PROJECT_ROOT/config"

# Create ZSH configuration
echo -e "${PURPLE}[>]${RESET} Creating ZSH configuration..."
cat > "$PROJECT_ROOT/config/zshrc" << 'ZSHCONFIG'
#!/bin/zsh

# Meta OS (TCN OS) - ZSH Configuration
# Cyberpunk Theme Configuration

# Color Definitions
export CLICOLOR=1
export CLICOLOR_FORCE=1

# Neon Colors
CYAN='\033[36m'
PURPLE='\033[38;5;135m'
BLUE='\033[34m'
RED='\033[31m'
GREEN='\033[32m'
YELLOW='\033[33m'
BOLD='\033[1m'
RESET='\033[0m'

# Custom Prompt with Cyberpunk Style
PROMPT="${PURPLE}[TUCCI@CYBER-NATION]${CYAN}:${PURPLE}~${BLUE}#${RESET} "

# Enable command history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_FIND_NO_DUPS

# Key bindings for terminal
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# Alias definitions
alias ls='ls -la --color=auto'
alias ll='ls -lh'
alias grep='grep --color=auto'
alias meta-banner='bash bin/terminal-banner.sh'
alias meta-matrix='bash bin/matrix-effect.sh'
alias meta-crt='bash effects/crt-distortion.sh'
alias meta-glitch='bash effects/crt-distortion.sh && bash effects/rgb-ghosting.sh'

# Functions for Meta OS
meta-status() {
    echo -e "${PURPLE}╔═══════════════════════════════════════╗${RESET}"
    echo -e "${PURPLE}║${CYAN}   Meta OS (TCN OS) - System Status   ${PURPLE}║${RESET}"
    echo -e "${PURPLE}╠═══════════════════════════════════════╣${RESET}"
    echo -e "${PURPLE}║${RESET} Hostname: $(hostname)"
    echo -e "${PURPLE}║${RESET} User: $(whoami)"
    echo -e "${PURPLE}��${RESET} Shell: $SHELL"
    echo -e "${PURPLE}║${RESET} Uptime: $(uptime -p)"
    echo -e "${PURPLE}╚═══════════════════════════════════════╝${RESET}"
}

ZSHCONFIG

echo -e "${GREEN}✓ ZSH configuration created${RESET}"

# Create Bash configuration
echo -e "${PURPLE}[>]${RESET} Creating Bash configuration..."
cat > "$PROJECT_ROOT/config/bashrc" << 'BASHCONFIG'
#!/bin/bash

# Meta OS (TCN OS) - Bash Configuration
# Cyberpunk Environment Setup

# Enable color support
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Cyberpunk Color Definitions
PURPLE='\033[38;5;135m'
CYAN='\033[36m'
BLUE='\033[34m'
RED='\033[31m'
GREEN='\033[32m'
YELLOW='\033[33m'
BOLD='\033[1m'
RESET='\033[0m'

# Custom Bash Prompt
PS1="${PURPLE}[TUCCI@CYBER-NATION]${CYAN}:${PURPLE}\w${BLUE}#${RESET} "

# History configuration
HISTCONTROL=ignoredups:ignorespace
HISTTIMEFORMAT="%F %T "
HISTFILESIZE=2000
HISTSIZE=1000

# Append to history file
shopt -s histappend

# Meta OS Aliases
alias meta-banner='bash bin/terminal-banner.sh'
alias meta-matrix='bash bin/matrix-effect.sh'
alias meta-boot='bash bin/boot-animation.sh'
alias meta-crt='bash effects/crt-distortion.sh'

# Welcome Message
echo -e "${PURPLE}Welcome to Meta OS (TCN OS)${RESET}"
echo -e "${CYAN}Securing Tomorrow Through Knowledge${RESET}"

BASHCONFIG

echo -e "${GREEN}✓ Bash configuration created${RESET}"

# Create color scheme configuration
echo -e "${PURPLE}[>]${RESET} Creating color scheme..."
cat > "$PROJECT_ROOT/config/color-scheme.sh" << 'COLORSCHEME'
#!/bin/bash

# Meta OS Cyberpunk Color Palette

# Define color codes
export NEON_PURPLE='\033[38;5;135m'
export NEON_CYAN='\033[36m'
export NEON_BLUE='\033[34m'
export NEON_RED='\033[31m'
export NEON_GREEN='\033[32m'
export NEON_YELLOW='\033[33m'
export NEON_MAGENTA='\033[35m'
export NEON_WHITE='\033[37m'
export BLACK_BG='\033[40m'
export RESET='\033[0m'
export BOLD='\033[1m'
export DIM='\033[2m'
export BLINK='\033[5m'
export REVERSE='\033[7m'

# RGB Glitch Colors
export GLITCH_R='\033[38;5;196m'
export GLITCH_G='\033[38;5;46m'
export GLITCH_B='\033[38;5;21m'

echo "Color scheme loaded"

COLORSCHEME

echo -e "${GREEN}✓ Color scheme created${RESET}"

# Create prompt configuration
echo -e "${PURPLE}[>]${RESET} Setting up custom prompt..."
cat > "$PROJECT_ROOT/config/prompt-config.sh" << 'PROMPTCONFIG'
#!/bin/bash

# Meta OS Custom Prompt Configuration

source config/color-scheme.sh

# Function to generate prompt
generate_prompt() {
    local user="TUCCI"
    local host="CYBER-NATION"
    local prompt_symbol="#"
    
    echo -ne "${NEON_PURPLE}[${user}@${host}]${NEON_CYAN}:${NEON_PURPLE}\w${NEON_BLUE}${prompt_symbol}${RESET} "
}

# Export for use
export PS1="$(generate_prompt)"

PROMPTCONFIG

echo -e "${GREEN}✓ Prompt configuration created${RESET}"

echo ""
echo -e "${PURPLE}${BOLD}═══════════════════════════════════════════${RESET}"
echo -e "${CYAN}${BOLD}Cyberpunk Environment Initialized!${RESET}"
echo -e "${PURPLE}${BOLD}═══════════════════════════════════════════${RESET}"
echo ""
echo -e "${GREEN}Configuration files created:${RESET}"
echo -e "${YELLOW}  • config/zshrc${RESET}"
echo -e "${YELLOW}  • config/bashrc${RESET}"
echo -e "${YELLOW}  • config/color-scheme.sh${RESET}"
echo -e "${YELLOW}  • config/prompt-config.sh${RESET}"
echo ""
