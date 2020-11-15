#Inspiration for this DockerFile from https://www.youtube.com/watch?v=ajPppaAVXQU
# Base image is latest ubuntu
FROM ubuntu:latest

#System update
#Install python3 and pip3
RUN apt-get update && apt-get install -y python3 \
	python3-pip

#Install jupyter
RUN pip3 install jupyter

#Install Numpy, Pandas, Matplotlib, Skilearn
RUN pip3 install numpy
RUN pip3 install pandas
RUN pip3 install matplotlib
RUN pip3 install sklearn

#Create system user
RUN useradd -ms /bin/bash jupyter
USER jupyter
WORKDIR /home/jupyter

#Start notebook
ENTRYPOINT ["jupyter", "notebook", "--ip=*"]

RUN docker run -it -v notebooks:/home/jupyter -p 8888:8888 jupyter-notebook