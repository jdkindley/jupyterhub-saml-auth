FROM jupyterhub/jupyterhub:1.5.0 

COPY . /app
WORKDIR /app

RUN apt-get update && \
    apt-get install -y xmlsec1 \
                       libxmlsec1-dev \
                       pkg-config \
                       curl \
                       software-properties-common \
                       build-essential \
                       make \
                       pkg-config \
                       libxml2-dev \
                       libxmlsec1-openssl \
                       gcc \
                       python3-dev

RUN pip install --upgrade pip &&  \
    pip install -e .
