# IN CLASS EXERCISE FOR 3/06

## Question 1:
Assume that the variables f, g, h, i, and j are assigned to registers $s0, $s1, $s2, $s3, and $s4, respectively. Assume that the base address of the arrays A and B are in registers $s6 and $s7, respectively. Convert the following C code to its corresponding MIPS assembly code:
```
f = g - A[B[4]];
```

## Question 2:
Convert the following C procedure, swap(a,b): this takes the original value of a and stores in b, and the original value of b is stored in a.
```
void swap(int *a, int *b) {
  int temp = *a;
  *a = *b;
  *b = temp;
}
```

### After Convering:
Insert your conversion underneath
```
### Your code for <Q#> goes here ###
```
To test using spim run:
`$: spim -f <filename>`
If you are sucessful, there would be no errors and the assembly would print to stdout:
For Q1:
```
0
```
For Q2:
```
Original A: 32
Original B: -5
Swapped A: -5
Swapped B: 32
```
