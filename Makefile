lint:
	ruff check src tests

format:
	ruff check --fix src tests

test:
	pytest tests

cicd:
	@if [ ! -f "$(CURDIR)/pyproject.toml" ]; then \
		echo "pyproject.toml file not found. Please create one."; \
		exit 1; \
	fi
	@if [ ! -f "$(CURDIR)/CHANGELOG.md" ]; then \
		echo "CHANGELOG.md file not found. Please create one."; \
		exit 1; \
	fi
	make lint || { echo "Linting failed"; exit 1; }
	make format || { echo "Formatting failed"; exit 1; }
