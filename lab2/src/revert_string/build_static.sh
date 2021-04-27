mkdir static

gcc -c ./revert_string.c -o ./static/revert_string.o
gcc -c ./main.c -o ./static/main.o

ar rcs ./static/libex2.a ./static/revert_string.o

gcc ./static/main.o -L./static -lex2 -o EX3_statically_linked