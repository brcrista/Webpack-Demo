OBJECTS := dist/index.html dist/main.js

.PHONY: all
all: $(OBJECTS)

.PHONY: clean
clean:
	rm -f $(OBJECTS)

dist:
	mkdir dist

dist/index.html: src/index.html dist
	cp $< $@

dist/main.js: webpack.config.js
	npm run build
