main:
    xor $20, $20        # base address of array = 0 ($20)
    xor $15, $15        # temp address = 0
    xor $21, $21
    addi $21, 10        # $21 = n = 10
    xor $8, $8          # $8 = i = 0
    xor $1, $1          # $1 = 0 (sum)

fori:
    xor $10, $10        # $10 = 0 
    add $10, $8         # $10 = i
    comp $11, $21       # $11 = -n
    add $10, $11        # $10 = i - n
    addi $10, 1         # $10 = i - (n - 1) = i - n + 1
    bz $10, exitfori    # if i == n - 1, jump to exitfori
    lw $22, 0($15)      # $22 = array[i]
    add $1, $22         # sum += $22
    addi $15, 4         # $15 = $15 + 4
    addi $8, 1          # i++
    b fori              # loop

exitfori:
    addi $15, 4         # $15 = $15 + 4
    sw $1, 0($15)      #  array[n] = sum
    xor $16, $16    
    addi $16, 1         # to indicate completion