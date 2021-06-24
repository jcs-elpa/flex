SHELL := /usr/bin/env bash

EMACS ?= emacs
CASK ?= cask

FLEX-FILES := flex.el

.PHONY: clean checkdoc lint unix-build unix-compile	unix-test

unix-ci: clean unix-build unix-compile unix-test

unix-build:
	$(CASK) install

unix-compile:
	@echo "Compiling..."
	@$(CASK) $(EMACS) -Q --batch \
		-L . \
		--eval '(setq byte-compile-error-on-warn t)' \
		-f batch-byte-compile $(FLEX-FILES)

unix-test:
	@echo "Testing..."
	$(CASK) exec ert-runner -L . -L clients	$(LOAD-TEST-FILES) -t '!no-win' -t '!org'

clean:
	rm -rf .cask *.elc clients/*.elc
