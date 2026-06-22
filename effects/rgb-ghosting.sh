#!/bin/bash

################################################################################
# Meta OS (TCN OS) - RGB Ghosting Effect
# Color Channel Separation
################################################################################

# Source color scheme
source config/color-scheme.sh 2>/dev/null || {
    NEON_PURPLE='\033[38;5;135m'
    NEON_CYAN='\033[36m'
    GLITCH_R='\033[38;5;196m'
    GLITCH_G='\033[38;5;46m'
    GLITCH_B='\033[38;5;21m'
    RESET='\033[0m'
    BOLD='\033[1m'
}

clear

echo -e "${NEON_CYAN}${BOLD}RGB Ghosting Effect${RESET}"
echo -e "Rendering color channel separation..."
echo ""

# Display ghosting effect
for ((i = 0; i < 3; i++)); do
    echo -e "${GLITCH_R}█████████████████████████████████████${RESET}"
    sleep 0.08
    echo -e "${GLITCH_G}█████████████████████████████████████${RESET}"
    sleep 0.08
    echo -e "${GLITCH_B}█████████████████████████████████████${RESET}"
    sleep 0.08
    echo -e "${NEON_PURPLE}█████████████████████████████████████${RESET}"
    sleep 0.08
    echo -e "${NEON_CYAN}█████████████████████████████████████${RESET}"
    sleep 0.08
    echo ""
done

echo -e "${NEON_PURPLE}[${NEON_CYAN}✓${NEON_PURPLE}]${RESET} RGB ghosting complete"
echo ""
