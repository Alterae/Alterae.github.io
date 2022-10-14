.PHONY: all build clean serve

all: build

build:
	mksite build

clean:
	-mksite clean

serve: clean build
	darkhttpd out/
