if [ ! -d "pyEnvJenkins" ]; then
        virtualenv pyEnvJenkins
fi
. pyEnvJenkins/bin/activate
pip install -r requirements.txt 


py.test --junitxml=reports/result.xml --html=reports/report.html testfile.py

pep8 calc.py > pep8.log || true
pylint calc.py > pylint.log || true

deactivate
