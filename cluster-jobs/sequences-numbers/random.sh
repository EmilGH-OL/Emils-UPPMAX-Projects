#!/bin/bash
#SBATCH -A uppmax2025-2-393
#SBATCH -t 00:02:00
#SBATCH -J random_chars
#SBATCH -o random_chars_%j.out
#SBATCH -e random_chars_%j.err
#SBATCH -c 1

OUTPUT="random_chars.txt"

tr -dc 'A-Za-z0-9!@#$%^&*()_+-=[]{}|;:,.<>?/`~' < /dev/urandom | head -c 1000000 > $OUTPUT

echo "Generated 1,000,000 random characters in $OUTPUT"
