.PHONY: all build clean serve

all: build

build: clean
	mksite build

clean:
	mksite clean

serve: build
	darkhttpd out/
