SOURCE_FILE=cv

all: build/$(SOURCE_FILE).pdf open

clean:
	rm -rf build

open:
	open build/$(SOURCE_FILE).pdf

build:
	mkdir -p build

build/$(SOURCE_FILE).pdf: build $(SOURCE_FILE).tex
	xelatex -output-directory=build $(SOURCE_FILE).tex

pdf:
	xelatex -output-directory=build $(SOURCE_FILE).tex
