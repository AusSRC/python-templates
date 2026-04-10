lint:
	ruff check src tests

format:
	ruff check --fix src tests

test:
	pytest tests

cicd:
	[ ! -f "$(CURDIR)/pyproject.toml" ] && echo "pyproject.toml file not found. Please run 'poetry init' to create one."
	[ ! -f "$(CURDIR)/CHANGELOG.md" ] && echo "CHANGELOG.md file not found. Please run create one."
	make lint || { echo "Linting failed"; exit 1; }
	make format || { echo "Formatting failed"; exit 1; }
