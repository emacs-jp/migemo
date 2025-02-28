.PHONY : test

EMACS ?= emacs

test:
	$(EMACS) -Q -batch -L . -L test \
		-l test/migemo-test.el \
		-f ert-run-tests-batch-and-exit

.PHONY: clean
clean:
	-rm -f *.elc *~
