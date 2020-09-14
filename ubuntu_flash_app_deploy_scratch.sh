#Install Dependencies
pip install flask
pip install numpy
pip install pandas
pip install pickle
pip install os
pip install json

#Validate Installed Packages
pip list

#Validate app is Operation
#PWD Directory hosting Flask App
python app.py

#Output Required Packages to Requirements File
pip freeze > requirement.txt


>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


- update Ubuntu

- install pip
sudo apt install python3-pip

- download files from git repo



- allow Flask to be access over public Internet
- update app.py
    #################################################
    # Flask Run
    #################################################
    if __name__ == "__main__":
        app.run(host="0.0.0.0", port=80, debug=False)


sudo apt update
sudo apt install python3-pip python3-dev  -y #build-essential libssl-dev libffi-dev python3-setuptools -y
sudo apt install python3-virtualenv -y
sudo apt install virtualenv


#Create Virtual Environment
virtualenv --python python3 ~/envs/spotify
Already using interpreter /usr/bin/python3
Using base prefix '/usr'
New python executable in /home/ubuntu/envs/spotify/bin/python3
Also creating executable in /home/ubuntu/envs/spotify/bin/python
Installing setuptools, pkg_resources, pip, wheel...done.


#Activate Virtual Environment
source ~/envs/spotify/bin/activate
(spotify) ubuntu@nginx-wexim:~$


#Install Dependencies
pip3 install os
pip3 install json5
pip3 install flask
pip3 install numpy
pip3 install pandas
#pip3 install pickle
pip install sklearn

#Validate Packages
(spotify) ubuntu@nginx-wexim:~$ pip list
Package         Version
--------------- -------
click           7.1.2
Flask           1.1.2
itsdangerous    1.1.0
Jinja2          2.11.2
MarkupSafe      1.1.1
numpy           1.19.2
pandas          1.1.2
pip             20.2.3
pkg-resources   0.0.0
python-dateutil 2.8.1
pytz            2020.1
setuptools      50.3.0
six             1.15.0
Werkzeug        1.0.1
wheel           0.35.1

#Update Flask App to Allow Public Access
(spotify) ubuntu@nginx-wexim:~/project_3_ML$ tail app.py
    predictor = Predictor()
    genre = predictor.predictGenreIndividual( acousticness, dance, duration, energy, instrumentalness,
     liveness, loudness, speechiness, tempo, valence, popularity, key, mode)
    return jsonify({"genre":genre})




if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80, debug=False)



sudo pip3 install flask numpy pandas sklearn xgboost
#Install Packages As root if You're going to run as root
(spotify) ubuntu@nginx-wexim:~/project_3_ML$ history | grep "sudo pip3 install"
   52  sudo pip3 install flask numpy pandas
   66  sudo pip3 install sklearn
sudo pip3 install xgboost
sudo snap install cmake --classic
sudo -H pip3 install xgboost


(spotify) ubuntu@ip-172-31-0-182:~/project_3_ML$ history | tail -n 15
   60  sudo pip list
   61  sudo pip3 list
   62  pip3 list
   63  sudo cmake ..
   64  sudo make -j$(nproc)
   65  sudo pip3 list
   66  cd ../../
   67  ll
   68  cd project_3_ML/
   69  sudo python3 app.py 
   70  sudo pip3 install xgboost
   71  sudo pip3 install xgboost -H
   72  sudo -H pip3 install xgboost
   73  history | tail
   74  history | tail -n 15

^C(spotify) ubuntu@ip-172-31-0-182:~/project_3_ML$ sudo pip3 install xgboost
The directory '/home/ubuntu/.cache/pip/http' or its parent directory is not owned by the current user and the cache has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
The directory '/home/ubuntu/.cache/pip' or its parent directory is not owned by the current user and caching wheels has been disabled. check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.


(spotify) ubuntu@nginx-wexim:~/project_3_ML$ python3 app.py
 * Serving Flask app "app" (lazy loading)
 * Environment: production
   WARNING: This is a development server. Do not use it in a production deployment.
   Use a production WSGI server instead.
 * Debug mode: on
 * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
 * Restarting with stat
 * Debugger is active!
 * Debugger PIN: 128-704-987



69.154.227.188 - - [13/Sep/2020 05:32:43] "POST /getGenre/ HTTP/1.1" 500 -
69.154.227.188 - - [13/Sep/2020 05:32:48] "GET /predictor HTTP/1.1" 200 -
[2020-09-13 05:33:13,588] ERROR in app: Exception on /getGenre/ [POST]
Traceback (most recent call last):
  File "/usr/local/lib/python3.6/dist-packages/flask/app.py", line 2447, in wsgi_app
    response = self.full_dispatch_request()
  File "/usr/local/lib/python3.6/dist-packages/flask/app.py", line 1952, in full_dispatch_request
    rv = self.handle_user_exception(e)
  File "/usr/local/lib/python3.6/dist-packages/flask/app.py", line 1821, in handle_user_exception
    reraise(exc_type, exc_value, tb)
  File "/usr/local/lib/python3.6/dist-packages/flask/_compat.py", line 39, in reraise
    raise value
  File "/usr/local/lib/python3.6/dist-packages/flask/app.py", line 1950, in full_dispatch_request
    rv = self.dispatch_request()
  File "/usr/local/lib/python3.6/dist-packages/flask/app.py", line 1936, in dispatch_request
    return self.view_functions[rule.endpoint](**req.view_args)
  File "app.py", line 54, in getGenre
    liveness, loudness, speechiness, tempo, valence, popularity, key, mode)
  File "/home/ubuntu/project_3_ML/mlPredict.py", line 33, in predictGenreIndividual
    loaded_scaler = pickle.load(open('Models/XGBoost_scaler.sav', 'rb'))
ModuleNotFoundError: No module named 'sklearn'
69.154.227.188 - - [13/Sep/2020 05:33:13] "POST /getGenre/ HTTP/1.1" 500 -


#Failure to Install XGBoost as root
DENSE_PARSER=0']
    error: [Errno 2] No such file or directory: 'cmake': 'cmake'
    
    ----------------------------------------
Command "/usr/bin/python3 -u -c "import setuptools, tokenize;__file__='/tmp/pip-build-0yzcnmi2/xgboost/setup.py';f=getattr(tokenize, 'open', open)(__file__);code=f.read().replace('\r\n', '\n');f.close();exec(compile(code, __file__, 'exec'))" install --record /tmp/pip-h5eflm3t-record/install-record.txt --single-version-externally-managed --compile" failed with error code 1 in /tmp/pip-build-0yzcnmi2/xgboost/'


https://github.com/DwangoMediaVillage/pqkmeans#installation

#Solution
sudo apt install cmake -y
sudo pip3 install pqkmeans


https://xgboost.readthedocs.io/en/release_0.72/build.html
#Building on Ubuntu/Debian¶
#On Ubuntu, one builds XGBoost by running

git clone --recursive https://github.com/dmlc/xgboost
cd xgboost; make -j4