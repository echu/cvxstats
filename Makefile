.PHONY: all clean help

help:
	@echo "Make commands for packaging, releasing, and publishing cvxstats"
	@echo ""
	@echo "..."

TAG := $(shell git describe --tags --always --dirty=.dirty | \
	sed 's/v\(.*\)/\1/' | \
	sed 's/\([0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\)-\([0-9][0-9]*\)-\(g.*\)/\1.dev\2+\3/')

all:
	@echo $(TAG)

clean:
	@echo "nothing"

