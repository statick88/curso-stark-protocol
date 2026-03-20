# Stark Protocol - Makefile

.PHONY: all render preview pdf clean serve deploy

# Default target
all: render

# Render the book
render:
	quarto render

# Preview with live reload
preview:
	quarto preview

# Generate PDF
pdf:
	quarto render --to pdf

# Clean build artifacts
clean:
	rm -rf _book docs
	rm -f *.html

# Serve locally
serve:
	quarto preview

# Deploy to GitHub Pages
deploy: render
	cd docs && git init && git add . && git commit -m "Deploy: $(shell date +%Y-%m-%d)"
	cd docs && git branch -M gh-pages
	cd docs && git remote add origin https://github.com/statick88/curso-stark-protocol.git || true
	cd docs && git push -u origin gh-pages --force

# Check for issues
check:
	quarto check

# Install dependencies
install:
	quarto install

# Help
help:
	@echo "Stark Protocol - Available targets:"
	@echo "  make render   - Render the book to HTML"
	@echo "  make preview  - Preview with live reload"
	@echo "  make pdf      - Generate PDF version"
	@echo "  make clean    - Remove build artifacts"
	@echo "  make serve    - Serve locally"
	@echo "  make deploy   - Deploy to GitHub Pages"
	@echo "  make check    - Check for issues"
	@echo "  make help     - Show this help"
