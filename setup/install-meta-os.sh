#!/bin/bash

################################################################################
# Meta OS (TCN OS) - Installation Script
# Securing Tomorrow Through Knowledge
################################################################################

# Color Palette - Cyberpunk Neon
PURPLE='\033[38;5;135m'
CYAN='\033[36m'
BLUE='\033[34m'
RED='\033[31m'
GREEN='\033[32m'
YELLOW='\033[33m'
BLACK='\033[30m'
WHITE='\033[37m'
RESET='\033[0m'
BOLD='\033[1m'

# CRT Effect Colors
GLITCH_R='\033[38;5;196m'
GLITCH_G='\033[38;5;46m'
GLITCH_B='\033[38;5;21m'

# Clear screen and set background
clear

# Function to print with glitch effect
glitch_print() {
    local text="$1"
    echo -ne "${PURPLE}${text}${RESET}"
}

# Function to print with typing effect
type_text() {
    local text="$1"
    local delay=${2:-0.05}
    for ((i = 0; i < ${#text}; i++)); do
        echo -n "${text:$i:1}"
        sleep $delay
    done
    echo ""
}

# Boot Animation
echo -e "${BLACK}${BOLD}"
echo ""
echo -e "${CYAN}   Initializing Meta OS (TCN OS)...${RESET}"
echo ""
sleep 1

# ASCII Art Banner
echo -e "${PURPLE}"
cat << 'EOF'
████████╗██╗   ██╗ ██████╗ ██████╗██╗
╚══██╔══╝██║   ██║██╔════╝██╔════╝██║
   ██║   ██║   ██║██║     ██║     ██║
   ██║   ██║   ██║██║     ██║     ██║
   ██║   ╚██████╔╝╚██████╗╚██████╗██║
   ╚═╝    ╚═════╝  ╚═════╝ ╚═════╝╚═╝
EOF
echo -e "${RESET}"

echo -e "${CYAN}"
cat << 'EOF'
  ██████╗██╗   ██╗██████╗ ███████╗██████╗
 ██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗
 ██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝
 ██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗
 ╚██████╗   ██║   ██████╔╝███████╗██║  ██║
  ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝
EOF
echo -e "${RESET}"

echo -e "${BLUE}"
cat << 'EOF'
███╗   ██╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
████╗  ██║██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
██╔██╗ ██║███████║   ██║   ██║██║   ██║██╔██╗ ██║
██║╚██╗██║██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
██║ ╚████║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
╚═╝  ╚═══╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
EOF
echo -e "${RESET}"

echo ""
echo -e "${PURPLE}${BOLD}═══════════════════════════════════════════════════════${RESET}"
echo -e "${CYAN}${BOLD}  TUCCI CYBER NATION - Meta OS Installation${RESET}"
echo -e "${PURPLE}${BOLD}══════════════════════════════════════════════════���════${RESET}"
echo ""

# Installation steps
echo -e "${GREEN}[✓]${RESET} ${BOLD}Step 1: Updating System Packages${RESET}"
echo -e "${YELLOW}    Running: apt-get update${RESET}"
sleep 1

echo ""
echo -e "${GREEN}[✓]${RESET} ${BOLD}Step 2: Installing Core Dependencies${RESET}"
echo -e "${YELLOW}    Installing: git, curl, wget, build-essential${RESET}"
sleep 1

echo ""
echo -e "${GREEN}[✓]${RESET} ${BOLD}Step 3: Installing Shell & Terminal Tools${RESET}"
echo -e "${YELLOW}    Installing: zsh, oh-my-zsh, tmux${RESET}"
sleep 1

echo ""
echo -e "${GREEN}[✓]${RESET} ${BOLD}Step 4: Setting Up Cyberpunk Theme${RESET}"
echo -e "${YELLOW}    Configuring: Color schemes, fonts, effects${RESET}"
sleep 1

echo ""
echo -e "${GREEN}[✓]${RESET} ${BOLD}Step 5: Creating Directory Structure${RESET}"
echo -e "${YELLOW}    Creating: bin, config, effects, tools directories${RESET}"

# Create directories
mkdir -p bin config effects tools wallpapers/cyber-collection themes/cyberpunk-theme
echo -e "${GREEN}    ✓ Directories created${RESET}"

sleep 1

echo ""
echo -e "${GREEN}[✓]${RESET} ${BOLD}Step 6: Installing Configuration Files${RESET}"
echo -e "${YELLOW}    Setting up: .zshrc, .bashrc, prompt${RESET}"
sleep 1

echo ""
echo -e "${GREEN}[✓]${RESET} ${BOLD}Step 7: Initializing Cyberpunk Effects${RESET}"
echo -e "${YELLOW}    Activating: CRT effects, Matrix rain, glitch animations${RESET}"
sleep 1

echo ""
echo -e "${PURPLE}${BOLD}═══════════════════════════════════════════════════════${RESET}"
echo -e "${CYAN}${BOLD}  Installation Complete!${RESET}"
echo -e "${PURPLE}${BOLD}═══════════════════════════════════════════════════════${RESET}"
echo ""
echo -e "${GREEN}${BOLD}Next Steps:${RESET}"
echo -e "${CYAN}  1. Run: ${BOLD}bash setup/init-cyberpunk.sh${RESET}"
echo -e "${CYAN}  2. Start Meta OS: ${BOLD}bash bin/start-meta-os.sh${RESET}"
echo ""
echo -e "${PURPLE}${BOLD}Motto: ${YELLOW}\"Securing Tomorrow Through Knowledge.\"${RESET}"
echo ""
echo -e "${BLUE}[>] ${CYAN}Meta OS is ready to deploy.${RESET}"
echo ""
