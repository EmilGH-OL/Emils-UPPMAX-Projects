#!/bin/bash
#SBATCH -A uppmax2025-2-393
#SBATCH -J fibonacci_job
#SBATCH -p pelle
#SBATCH -n 1
#SBATCH -t 00:05:00
#SBATCH --output=fibonacci_%j.out

module load python/3.11.4

python << 'EOF'
def fibonacci(n):
    a, b = 0, 1
    for i in range(n):
        print(f"Fibonacci {i+1} = {a:.5e}")
        a, b = b, a + b

fibonacci(1000)
EOF
