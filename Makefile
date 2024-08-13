.PHONY: install
install:
	pip3 install --quiet --upgrade pip
	pip3 install --quiet -r requirements.txt

.PHONY: build
build:
	pip3 install --quiet --upgrade pip
	pip3 install --quiet --upgrade setuptools wheel twine
	python3 setup.py sdist bdist_wheel

.PHONY: publish
publish:
	twine upload dist/*

.PHONY: bump
bump:
	bump2version $(filter-out $@,$(MAKECMDGOALS))
	@git --no-pager show HEAD
	@echo
	@git verify-commit HEAD
	@git verify-tag `git describe`
	@echo
	# git push origin main --tags
%:
	@:
