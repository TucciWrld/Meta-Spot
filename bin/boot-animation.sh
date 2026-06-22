#!/bin/bash

################################################################################
# Meta OS (TCN OS) - Boot Animation
# CRT Glitch Effect with ASCII Art
################################################################################

# Source color scheme
source config/color-scheme.sh 2>/dev/null || {
    NEON_PURPLE='\033[38;5;135m'
    NEON_CYAN='\033[36m'
    NEON_BLUE='\033[34m'
    GLITCH_R='\033[38;5;196m'
    GLITCH_G='\033[38;5;46m'
    GLITCH_B='\033[38;5;21m'
    RESET='\033[0m'
    BOLD='\033[1m'
}

# Function for CRT glitch effect
glitch_line() {
    local text="$1"
    local color="$2"
    echo -ne "${color}${text}${RESET}\r"
    sleep 0.02
    echo -ne "${GLITCH_R}${text:0:$((RANDOM % ${#text}))}${RESET}\r"
    sleep 0.01
    echo -e "${color}${text}${RESET}"
}

# ASCII Art - TUCCI
TUCCI_ART=(
    "████████╗██╗   ██╗ ██████╗ ██████╗██╗"
    "╚══██╔══╝���█║   ██║██╔════╝██╔════╝██║"
    "   ██║   ██║   ██║██║     ██║     ██║"
    "   ██║   ██║   ██║██║     ██║     ██║"
    "   ██║   ╚██████╔╝╚██████╗╚██████╗██║"
    "   ╚═╝    ╚═════╝  ╚═════╝ ╚═════╝╚═╝"
)

# ASCII Art - CYBER
CYBER_ART=(
    "  ██████╗██╗   ██╗██████╗ ███████╗██████╗"
    " ██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗"
    " ██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝"
    " ██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗"
    " ╚██████╗   ██║   ██████╔╝███████╗██║  ██║"
    "  ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝"
)

# ASCII Art - NATION
NATION_ART=(
    "███╗   ██╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗"
    "████╗  ██║██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║"
    "██╔██╗ ██║███████║   ██║   ██║██║   ██║██╔██╗ ██║"
    "██║╚██╗██║██╔══██║   ██║   ██║██║   ██║██║╚██╗██║"
    "██║ ╚████║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║"
    "╚═╝  ╚═══╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝"
)

clear

# Print TUCCI with glitch effect
echo -e "${NEON_PURPLE}"
for line in "${TUCCI_ART[@]}"; do
    glitch_line "$line" "${NEON_PURPLE}"
done

sleep 0.5

# Print CYBER with glitch effect
echo -e "${NEON_CYAN}"
for line in "${CYBER_ART[@]}"; do
    glitch_line "$line" "${NEON_CYAN}"
done

sleep 0.5

# Print NATION with glitch effect
echo -e "${NEON_BLUE}"
for line in "${NATION_ART[@]}"; do
    glitch_line "$line" "${NEON_BLUE}"
done

echo ""
sleep 1

# Display boot status messages
echo -e "${NEON_PURPLE}[${NEON_CYAN}*${NEON_PURPLE}]${RESET} Initializing cyberpunk environment..."
sleep 0.5
echo -e "${NEON_PURPLE}[${NEON_CYAN}*${NEON_PURPLE}]${RESET} Loading terminal effects..."
sleep 0.5
echo -e "${NEON_PURPLE}[${NEON_CYAN}*${NEON_PURPLE}]${RESET} Activating CRT distortion..."
sleep 0.5
echo -e "${NEON_PURPLE}[${NEON_CYAN}*${NEON_PURPLE}]${RESET} Engaging neon matrices..."
sleep 0.5
echo -e "${NEON_PURPLE}[${NEON_GREEN}✓${NEON_PURPLE}]${RESET} ${NEON_GREEN}Boot sequence complete!${RESET}"
echo ""
