# Data-mining-project
### Instructions for running locally
1. `git clone https://github.com/thomasadohle/Data-mining-project.git`
2. `cd Data-mining-project`
3. `docker build . -t jupyter-notebook`
4. `docker run -it -v notebooks:/home/jupyter -p 8888:8888 jupyter-notebook`
5. Go to localhost:8888 in a web broswer
6. The password is "password"

### Instructions for development - windows
1. `git clone https://github.com/thomasadohle/Data-mining-project.git`
2. `cd Data-mining-project\venv-windows\Scripts`
3. `activate.bat`
4. `jupyter notebook --port 1234`
5. Go to localhost:1234 in a web browser

### Instructions for development - mac/linux 
1. `git clone https://github.com/thomasadohle/Data-mining-project.git`
2. `cd Data-mining-project`
3. `source venv-mac/bin/activate`
4. `sudo jupyter notebook --port 1234 --allow-root`
5. Go to localhost:1234 in a web browser
