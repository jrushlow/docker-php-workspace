.PHONY: build
build: ## Build docker workspace image
	docker build . -t workspace:latest

.PHONY: workspace
workspace: ## Launch workspace container bash shell
	docker run -ti --rm --mount type=bind,src=/home/jrdev/develop/php,dst=/var/develop workspace:latest /bin/bash
