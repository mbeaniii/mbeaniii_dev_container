FROM python:3.10

# COPY requirements.txt ./
# RUN pip install --trusted-host pypi.python.org -r requirements.txt

RUN apt-get update && apt-get install -y \
    git \
    ssh \
    sudo \
    bash \
 && rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash", "-c"]

RUN useradd -m developer && echo "developer:developer" | chpasswd && adduser developer sudo

USER developer

WORKDIR /home/developer

EXPOSE 80

ENV NAME World

CMD ["sleep", "infinity"]