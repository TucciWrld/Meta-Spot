#!/bin/bash

################################################################################
# Meta OS (TCN OS) - Start Script
# Launch the Cyberpunk Environment
################################################################################

# Source color scheme
source config/color-scheme.sh 2>/dev/null || {
    NEON_PURPLE='\033[38;5;135m'
    NEON_CYAN='\033[36m'
    NEON_BLUE='\033[34m'
    RESET='\033[0m'
    BOLD='\033[1m'
}

clear

# Display boot animation
echo -e "${NEON_CYAN}${BOLD}Starting Meta OS...${RESET}\n"

# Run boot animation if available
if [ -f "bin/boot-animation.sh" ]; then
    bash bin/boot-animation.sh
else
    echo -e "${NEON_PURPLE}Boot animation not found${RESET}"
fi

sleep 2

# Display terminal banner
if [ -f "bin/terminal-banner.sh" ]; then
    bash bin/terminal-banner.sh
else
    echo -e "${NEON_PURPLE}Terminal banner not found${RESET}"
fi

sleep 1

# Display system info
echo ""
echo -e "${NEON_PURPLE}${BOLD}════════════════════════════════════════${RESET}"
echo -e "${NEON_CYAN}${BOLD}Meta OS (TCN OS) - System Ready${RESET}"
echo -e "${NEON_PURPLE}${BOLD}════════════════════════════════════════${RESET}"
echo ""
echo -e "${NEON_BLUE}System Information:${RESET}"
echo -e "${NEON_CYAN}  • Hostname: $(hostname)${RESET}"
echo -e "${NEON_CYAN}  • User: $(whoami)${RESET}"
echo -e "${NEON_CYAN}  • Shell: $SHELL${RESET}"
echo -e "${NEON_CYAN}  • Date: $(date +'%Y-%m-%d %H:%M:%S')${RESET}"
echo ""
echo -e "${NEON_PURPLE}${BOLD}Available Commands:${RESET}"
echo -e "${NEON_YELLOW}  • meta-banner      - Display animated banner${RESET}"
echo -e "${NEON_YELLOW}  • meta-matrix      - Start Matrix rain effect${RESET}"
echo -e "${NEON_YELLOW}  • meta-boot        - Show boot animation${RESET}"
echo -e "${NEON_YELLOW}  • meta-crt         - Apply CRT effects${RESET}"
echo ""
echo -e "${NEON_PURPLE}${BOLD}════════════════════════════════════════${RESET}"
echo ""
echo -e "${NEON_GREEN}${BOLD}Motto: Securing Tomorrow Through Knowledge${RESET}"
echo ""
