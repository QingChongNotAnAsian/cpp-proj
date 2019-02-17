# Create executable main.out from the source file.
COMPILER=g++
default: build
build:
	test -d bin || mkdir bin
	cd bin
	$(COMPILER) -O3 -o bin/main.out src/main.cpp
clean:
	rm -r bin
