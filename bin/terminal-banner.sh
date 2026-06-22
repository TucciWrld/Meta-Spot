#!/bin/bash

################################################################################
# Meta OS (TCN OS) - Terminal Banner
# Animated Rainbow Gradient ASCII Text
################################################################################

# Source color scheme
source config/color-scheme.sh 2>/dev/null || {
    NEON_PURPLE='\033[38;5;135m'
    NEON_CYAN='\033[36m'
    NEON_BLUE='\033[34m'
    NEON_RED='\033[31m'
    NEON_GREEN='\033[32m'
    NEON_YELLOW='\033[33m'
    RESET='\033[0m'
    BOLD='\033[1m'
}

# Color array for rainbow effect
RAINBOW_COLORS=(
    "$NEON_RED"
    "$NEON_YELLOW"
    "$NEON_GREEN"
    "$NEON_CYAN"
    "$NEON_BLUE"
    "$NEON_PURPLE"
)

# Banner lines
BANNER_LINES=(
    "████████╗██╗   ██╗ ██████╗ ██████╗██╗"
    "╚══██╔══╝██║   ██║██╔════╝██╔════╝██║"
    "   ██║   ██║   ██║██║     ██║     ██║"
    "   ██║   ██║   ██║██║     ██║     ██║"
    "   ██║   ╚██████╔╝╚██████╗╚██████╗██║"
    "   ╚═╝    ╚═════╝  ╚═════╝ ╚═════╝╚═╝"
)

clear

# Display banner with cycling rainbow colors
echo ""
for i in "${!BANNER_LINES[@]}"; do
    color_index=$((i % ${#RAINBOW_COLORS[@]}))
    echo -e "${RAINBOW_COLORS[$color_index]}${BANNER_LINES[$i]}${RESET}"
    sleep 0.1
done

echo ""
echo -e "${NEON_CYAN}${BOLD}       ╔════════════════════════════════════╗${RESET}"
echo -e "${NEON_PURPLE}${BOLD}       ║${NEON_CYAN}   CYBER NATION${NEON_PURPLE}${BOLD}              ║${RESET}"
echo -e "${NEON_CYAN}${BOLD}       ║${NEON_BLUE}  Securing Tomorrow Through Knowledge  ${NEON_CYAN}║${RESET}"
echo -e "${NEON_CYAN}${BOLD}       ╚════════════════════════════════════╝${RESET}"
echo ""
echo -e "${NEON_GREEN}${BOLD}[✓]${RESET} ${NEON_CYAN}System Status: ONLINE${RESET}"
echo -e "${NEON_GREEN}${BOLD}[✓]${RESET} ${NEON_CYAN}Cyberpunk Theme: ACTIVE${RESET}"
echo -e "${NEON_GREEN}${BOLD}[✓]${RESET} ${NEON_CYAN}CRT Effects: ENABLED${RESET}"
echo ""
