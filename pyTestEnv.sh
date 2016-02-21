if [ ! -d "pyEnvJenkins" ]; then
        virtualenv pyEnvJenkins
fi
. pyEnvJenkins/bin/activate
pip install -r requirements.txt 


py.test  --html=report.html testfile.py

pep8 calc.py > pep8.log || true
pyflakes calc.py > pyflakes.log || true

deactivate
