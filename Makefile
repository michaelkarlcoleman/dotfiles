

.PHONY: install

install::
	rsync -av --exclude='*~' home/ ~/
