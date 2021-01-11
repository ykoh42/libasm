# LIBASM

## Development environment

### 1. Homebrew installation

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. nasm installation

```shell
brew install nasm 
```

## Getting started

```shell
# For library
make

# For test
make test
```

## Rules

* You must write 64 bits ASM. Beware of the "calling convention".

* You can’t do inline ASM, you must do ’.s’ files.

* You must compile your assembly code with nasm.

* You must use the Intel syntax, not the AT&T.

* The library must be called libasm.a.

* You must submit a main that will test your functions and that will compile with your library to show that it’s functional.

* You must rewrite the following functions in asm:

	* ft_strlen (man 3 strlen)
	* ft_strcpy (man 3 strcpy)
	* ft_strcmp (man 3 strcmp)
	* ft_write (man 2 write)
	* ft_read (man 2 read)
	* ft_strdup (man 3 strdup, you can call to malloc)

* You must check for errors during syscalls and properly set them when needed

* Your code must set the variable errno properly.

* For that, you are allowed to call the extern ___error.