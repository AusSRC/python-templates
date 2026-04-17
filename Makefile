lint:
	ruff check src tests

format:
	ruff check --fix src tests

test:
	pytest tests

PYPROJECT_FILE := $(CURDIR)/pyproject.toml
CHANGELOG_FILE := $(CURDIR)/CHANGELOG.md
REQUIRED_FILES := $(PYPROJECT_FILE) $(CHANGELOG_FILE)

cicd:
	@echo "Running CI/CD checks..."
	@for file in $(REQUIRED_FILES); do \
		echo "Checking $$file"; \
		if [ ! -f "$$file" ]; then \
			echo "$$file not found. Please create one."; \
			exit 1; \
		fi; \
	done
	@echo "All required files are present."
	@echo "Running linting and formatting checks..."
	@${MAKE} lint
	@${MAKE} format
