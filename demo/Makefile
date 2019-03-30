#
# Makefile for lucet
#
usage:
	@echo "make [info|build|run]"

set e:
	cd $(HOME)/coding/cc/src/github.com/fastly/lucet
	source devenv_setenv.sh

info i:
	lucetc --help

build b:
	wasm32-unknown-wasi-clang -Ofast -o hello.wasm hello.c
	#wasm32-unknown-wasi-clang hello.c -o hello.wasm

run r:
	lucetc-wasi hello.wasm -o hello.so
	lucet-wasi hello.so
	lucet-wasi hello.so world

clean:
	rm -f *.so *.wasm
