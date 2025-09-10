FLAGS = -DLONGTYPE

all: drat-trim-t lrat-check compress decompress gapless

drat-trim-t: drat-trim-t.c
	gcc drat-trim-t.c -D_GNU_SOURCE -std=c99 -O3 -o drat-trim-t

lrat-check: lrat-check.c
	gcc lrat-check.c -std=c99 $(FLAGS) -O2 -o lrat-check

compress: compress.c
	gcc compress.c -std=c99 $(FLAGS) -O2 -o compress

decompress: decompress.c
	gcc decompress.c -std=c99 $(FLAGS) -O2 -o decompress

gapless: gapless.c
	gcc gapless.c -std=c99 -O2 -o gapless

clean:
	rm drat-trim-t lrat-check compress decompress gapless
