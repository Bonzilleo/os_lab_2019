mkdir shared

gcc -c -fPIC ./revert_string.c -o ./shared/revert_string.o

gcc -shared ./shared/revert_string.o -o ./shared/libex2d.so

gcc ./static/main.o -L./shared -lex2d -o ./EX3_use_shared_library

# Для запуска файла с динамической библиотекой
LD_LIBRARY_PATH=$(pwd)/shared ./EX3_use_shared_library

