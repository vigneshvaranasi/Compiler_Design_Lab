# Arithmetic Expression Calculator (Lex & Yacc)

### Step 1: Compile the Lex File
```sh
lex calculator.l
```

### Step 2: Compile the Yacc File
```sh
yacc -d calculator.y
```

### Step 3: Compile the Generated C Files
```sh
gcc lex.yy.c y.tab.c -ll -o calculator
```

### Step 4: Run the Calculator
```sh
./calculator
```