FROM python:2

RUN apt-get -y update

RUN pip install jupyter apache-beam[gcp]

WORKDIR /work

CMD ["jupyter",  "notebook", "--NotebookApp.token=''", "--ip=0.0.0.0", "--port=8888", "--allow-root"]
