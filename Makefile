OBJECTS := dist/index.html dist/main.js

.PHONY: all
all: $(OBJECTS)

dist/index.html: src/index.html
	cp $< $@

dist/main.js: src/index.js
	cp $< $@
