PYTHON=python2.7

bootstrap:
	python virtualenv.py -p ${PYTHON} --never-download --distribute --extra-search-dir=downloads/bootstrap venv
	venv/bin/python bootstrap.py -v 2.1.0 \
		-f downloads/bootstrap

clean:
	- rm -rf bin develop-eggs eggs parts venv
