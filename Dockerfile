
FROM jupyter/scipy-notebook

MAINTAINER Rich Stoner <stonerri@gmail.com>

USER root

# # Add dependency
RUN apt-get update
# RUN apt-get install -y graphviz

USER $NB_USER

# # Install requirements for Python 2
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Install requirements for Python 3
RUN /home/main/anaconda2/envs/python3/bin/pip install -r requirements.txt



