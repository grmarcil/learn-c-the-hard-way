CFLAGS=-Wall -g

SOURCES := $(wildcard src/*.c)
TARGETS := $(patsubst src/%.c,bin/%,$(SOURCES))

all: $(TARGETS)

bin/% : src/%.c
	cc $(CFLAGS) $< -o $@

clean:
	rm -rf bin/*
