if [ ! -d "pyEnvJenkins" ]; then
        virtualenv pyEnvJenkins
fi
. pyEnvJenkins/bin/activate
pip install -r requirements.txt 

py.test --html=report.html testfile.py

deactivate
