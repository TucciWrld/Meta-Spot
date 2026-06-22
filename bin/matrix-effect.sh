#!/bin/bash

################################################################################
# Meta OS (TCN OS) - Matrix Rain Effect
# Digital Rain Animation (Ctrl+C to exit)
################################################################################

# Source color scheme
source config/color-scheme.sh 2>/dev/null || {
    NEON_GREEN='\033[32m'
    NEON_CYAN='\033[36m'
    DIM='\033[2m'
    RESET='\033[0m'
    BOLD='\033[1m'
}

# Terminal dimensions
COLS=$(tput cols)
ROWS=$(tput lines)

# Array to store column positions
declare -a column_pos

# Initialize columns
for ((i = 0; i < COLS; i++)); do
    column_pos[i]=0
done

# Matrix characters
MATRIX_CHARS=(0 1 ０ １ 2 3 4 5 6 7 8 9 z Z a b c d e f g)

# Function to get random character
get_random_char() {
    echo "${MATRIX_CHARS[$((RANDOM % ${#MATRIX_CHARS[@]}))]}"
}

# Clear screen and hide cursor
clear
tput civis

# Trap to show cursor on exit
trap 'tput cnorm' EXIT

echo -e "${NEON_CYAN}${BOLD}Matrix Rain Effect${RESET} - Press Ctrl+C to exit"
echo ""

# Main loop
while true; do
    for ((i = 0; i < COLS; i++)); do
        # Random chance to start or continue rain
        if [ $((RANDOM % 3)) -eq 0 ]; then
            # Advance column position
            column_pos[i]=$((column_pos[i] + 1))
            
            if [ ${column_pos[i]} -gt $((ROWS - 1)) ]; then
                column_pos[i]=0
            fi
            
            # Position cursor and print character
            tput cup ${column_pos[i]} $i
            
            # Alternate between bright and dim green
            if [ $((RANDOM % 2)) -eq 0 ]; then
                echo -ne "${NEON_GREEN}${BOLD}$(get_random_char)${RESET}"
            else
                echo -ne "${DIM}${NEON_GREEN}$(get_random_char)${RESET}"
            fi
        fi
    done
    
    sleep 0.05
done
