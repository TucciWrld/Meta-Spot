#!/bin/bash

################################################################################
# Meta OS (TCN OS) - CRT Distortion Effect
# Scanlines, Static, Flickering Simulation
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
    DIM='\033[2m'
}

clear

echo -e "${NEON_CYAN}${BOLD}CRT Distortion Effect${RESET}"
echo -e "${DIM}Generating scanlines and glitch effects...${RESET}"
echo ""

# Display test pattern with scanlines
echo -e "${NEON_PURPLE}"
echo "╔═══════════════════════════════════════════════╗"
echo "║         CRT DISTORTION TEST PATTERN          ║"
echo "╠═══════════════════════════════════════════════╣"

for ((i = 0; i < 10; i++)); do
    # Add scanline effect
    echo "║ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ ║"
    echo "║                                             ║"
    
    # Random glitch effect
    if [ $((RANDOM % 5)) -eq 0 ]; then
        echo -ne "║ ${GLITCH_R}G▓▓▓▓${RESET}                                    ║\r"
        sleep 0.05
        echo "║                                             ║"
    fi
done

echo "╠═══════════════════════════════════════════════╣"
echo -e "║${NEON_CYAN}       RGB SEPARATION TEST${NEON_PURPLE}        ║"
echo "╠═══════════════════════════════════════════════╣"

# RGB separation effect
echo -e "${GLITCH_R}║ R R R R R R R R R R R R R R R R R R R R R ║${RESET}"
sleep 0.1
echo -e "${GLITCH_G}║ G G G G G G G G G G G G G G G G G G G G G ║${RESET}"
sleep 0.1
echo -e "${GLITCH_B}║ B B B B B B B B B B B B B B B B B B B B B ║${RESET}"
sleep 0.1
echo -e "${NEON_PURPLE}║                                             ║${RESET}"
echo "╚═══════════════════════════════════════════════╝"

echo ""
echo -e "${NEON_PURPLE}[${NEON_CYAN}✓${NEON_PURPLE}]${RESET} CRT effects rendered"
echo ""
