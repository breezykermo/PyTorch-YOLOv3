FROM tensorflow/tensorflow:latest-gpu-py3

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip && \
	pip install -r requirements.txt && \
	rm -r ~/.cache/pip

WORKDIR /yolo
COPY . /yolo

RUN /bin/bash
