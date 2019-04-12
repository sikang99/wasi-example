#
# Makefile for sse by Stoney, sikang99@gmail.com
#
EDIT=vi
all: usage
usage:
	@echo "usage: make [edit|build|run|git]"
# ---------------------------------------------------------------------------
edit e:
	@echo "make (edit) [make|readme|go]"

edit-make em:
	$(EDIT) Makefile

edit-readme er:
	$(EDIT) README.md

osc:
	$(EDIT) OSC.md
# ---------------------------------------------------------------------------
git g:
	@echo ""
	@echo "make (git) [update|login|tag|status]"
	@echo ""

git-update gu:
	git add *.md Makefile demo/
	#git commit -m "initial commit"
	#git remote remove go.mod sse.go
	git commit -m "add demo example"
	#git commit -m "update contents"
	git push

git-login gl:
	git config --global user.email "sikang99@gmail.com"
	git config --global user.name "Stoney Kang"
	git config --global push.default matching
	#git config --global push.default simple
	git config credential.helper store

git-tag gt:
	git tag v0.0.3
	git push --tags

git-status gs:
	git status
	git log --oneline -5
# ---------------------------------------------------------------------------
