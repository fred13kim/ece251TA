.data
### Setup Test Input ###
    A: .word 9, 8, 7, 6, 5
    B: .word 0, 1, 2, 3, 4
    g: .word 5
    newline: .asciiz "\n"

.text
.globl main
main:
### Load Data Values Into Registers ###
    lw $s1, g
    la $s6, A
    la $s7, B
    
### Your code for Q1 goes here ###
    lw $t0, 16($s7)
    sll $t0, $t0, 2
    addu $t0, $t0, $s6 #*note: address arithmetic should be done unsigned
    lw $t0, 0($t0)
    sub $s0, $s1, $t0

### Print S0 Register ###
    move $a0, $s0
    li $v0, 1
    syscall

    la $a0, newline
    li $v0, 4
    syscall

### Exit Program ###
    li $v0, 10
    syscall
