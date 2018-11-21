upload:
	make clean
	python3 setup.py sdist bdist_wheel && twine upload dist/*
clean:
	python setup.py clean --all
	pyclean .
	rm -rf *.pyc __pycache__ build dist hasy_tools.egg-info hasy_tools/__pycache__ tests/__pycache__ tests/reports docs/build .pytest_cache .tox .coverage
