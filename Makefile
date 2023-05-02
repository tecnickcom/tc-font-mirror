# makefile
#
# @link        https://github.com/tecnickcom/tc-font-mirror

# ----------------------------------------------------------------------------------------------------------------------

# Project version
VERSION=$(shell cat VERSION)

# --- MAKE TARGETS ---

# Display general help about this command
.PHONY: help
help:
	@echo ""
	@echo "$(PROJECT) Makefile."
	@echo "The following commands are available:"
	@echo ""
	@echo "  make tag : Tag the current version"
	@echo ""

# alias for help target
.PHONY: all
all: help

# Tag this GIT version
.PHONY: tag
tag:
	git checkout main && \
	git tag -a ${VERSION} -m "Release ${VERSION}" && \
	git push origin --tags && \
	git pull

