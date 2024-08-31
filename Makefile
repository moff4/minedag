
SOURCES=minedag tests

mypy:
	mypy ${SOURCES}

isort:
	isort ${SOURCES} --jobs=0

ruff:
	ruff check ${SOURCES}

lint: mypy ruff

fmt: isort

test:
	pytest

clean: ## Remove __pycache__ folders
	@find . | grep __pycache__ | xargs rm -rf

help: ## List of commands
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
