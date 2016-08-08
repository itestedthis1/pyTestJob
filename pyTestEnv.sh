if [ ! -d "pyEnvJenkins" ]; then
        virtualenv pyEnvJenkins
fi
. pyEnvJenkins/bin/activate
pip install -r requirements.txt 

rm -f pep8.log pyflakes.log

py.test --junitxml=reports/result.xml --html=reports/report.html testfile.py

pep8 calc.py > pep8A.log || true
pyflakes calc.py > pyflakesA.log || true

deactivate
