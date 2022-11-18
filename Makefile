flags := --log-level warn
srcs := $(find src)
statics := $(find static)
layouts := $(find layout)

.PHONY: all build clean serve watch

all: build

build: out

clean:
	@mksite $(flags) clean

serve: clean build
	@darkhttpd out/

out: $(srcs) $(statics) $(layouts)
	@mksite $(flags) build

watch:
	fd . src static layout | entr -rn make serve
