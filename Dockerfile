FROM python:3.7.0-slim-stretch

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    python3-dev \
    build-essential \
    gettext \
    libsasl2-dev \
    libldap2-dev \
    libssl-dev \
    wkhtmltopdf
RUN pip3 install --upgrade pip
RUN pip3 install pipenv

CMD ["bash"]
