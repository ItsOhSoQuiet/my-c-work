all: simple_print header_to_file
simple_print: simple_print.c
	gcc -g -o simple_print simple_print.c
header_to_file: header_to_file.c header_test.c header_test.h
	gcc -g -o header_to_file header_to_file.c header_test.c
