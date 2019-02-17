# Create executable main.out from the source file.
COMPILER=g++
# This means when you run 'make' it runs 'make build', by default.
default: build

build:
	# test -d returns an error code if the directory does not exist. || runs the next command if the previous one fails.
	test -d bin || mkdir bin
	cd bin
	# -O3 makes the compiler run the most optimizations
	$(COMPILER) -O3 -o bin/main.out src/main.cpp
# clean just removes all the files in bin
clean:
	rm -r bin
