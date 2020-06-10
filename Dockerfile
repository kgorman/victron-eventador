FROM python:3.7-slim-buster
ADD . /victron
WORKDIR /victron
RUN apt-get update && apt-get install -y \
    openssl libssl-dev ssl-cert \
    iputils-ping python-dev
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD ["python", "victron.py"]
