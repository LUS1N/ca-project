FROM ubuntu:latest
RUN apt update -y

RUN apt install -y \
	python-pip \
	python-dev \
	build-essential

COPY requirements.txt /usr/src/
RUN pip install --no-cache-dir -r /usr/src/requirements.txt
COPY . /usr/src/
#COPY config.py /usr/src/
#COPY app/ usr/src/app/
EXPOSE 5000

CMD ["python", "/usr/src/run.py"]
#CMD ["bash"]

