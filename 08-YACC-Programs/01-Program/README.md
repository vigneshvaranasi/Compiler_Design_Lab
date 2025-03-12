## Instructions for Installing and Running Lex & Yacc

### Step 1: Check Installed Versions
```sh
bison --version
flex --version
```

### Step 2: Install Bison and Flex (if not installed)
```sh
sudo apt-get install bison
sudo apt-get install flex
```

### Step 3: Compile the Lex File
```sh
lex arithmetic.l
```

### Step 4: Compile the Yacc File
```sh
yacc -d arithmetic.y
```

### Step 5: Compile the Generated C Files
```sh
gcc lex.yy.c y.tab.c -ll -o arithmetic
```

### Step 6: Run the Arithmetic Program
```sh
./arithmetic