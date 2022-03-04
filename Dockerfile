
FROM jupyter/scipy-notebook

MAINTAINER Rich Stoner <stonerri@gmail.com>

USER root

# # Add dependency
RUN apt-get update
RUN apt-get install -y zlib1g-dev

USER $NB_USER

# install dnaplotlib 
RUN git clone https://github.com/VoigtLab/dnaplotlib
WORKDIR dnaplotlib
RUN python setup.py install

# install seqprpe
RUN git clone https://github.com/jstjohn/SeqPrep.git
WORKDIR SeqPrep
RUN make

# return to base directory
WORKDIR /home/jovyan/work

# # Install requirements for Python 2
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt




