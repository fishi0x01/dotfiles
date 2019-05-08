TAR_NAME := $(shell date +%Y-%m-%d)_fishi-env.tar.gz

.PHONY: help

help: ## Prints help for targets with comments
	@grep -E '^[a-zA-Z0-9._-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

install: ## Run nix-env setup
	./install.sh

release: ## Prepare .tar release
	tar -C .. --exclude-vcs --exclude SHA256SUMS --exclude $(TAR_NAME) -czvf $(TAR_NAME) local-env 
	sha256sum $(TAR_NAME) > SHA256SUMS

ansible-provision: ## Run ansible playbook to provision localhost
	$(MAKE) -C ansible provision

setup-secrets: ## Set secret files
	$(MAKE) -C scripts setup-secrets
