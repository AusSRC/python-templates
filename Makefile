lint:
	poetry run pylint src

format:
	poetry run black src

test:
	poetry run pytest tests

cicd:
	[ ! -f "$(CURDIR)/pyproject.toml" ] && echo "pyproject.toml file not found. Please run 'poetry init' to create one."
	[ ! -f "$(CURDIR)/CHANGELOG.md" ] && echo "CHANGELOG.md file not found. Please run create one."
	make lint || { echo "Linting failed"; exit 1; }
	make format || { echo "Formatting failed"; exit 1; }