FROM tensorflow/tensorflow:latest-gpu

WORKDIR /workspace

# COPY ./contents /workspace/contents

EXPOSE 8900

RUN apt-get update && apt-get install -y curl

RUN pip install scikit-learn

RUN pip install pandas

RUN pip install matplotlib

RUN pip install numpy

RUN pip install opencv-python

RUN pip install jupyterlab

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

RUN curl -fsSL https://ollama.com/install.sh | sh

COPY requirements.txt /workspace

RUN pip install requirements.txt