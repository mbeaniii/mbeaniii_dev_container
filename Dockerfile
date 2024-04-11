FROM python:3.8-slim

WORKDIR /app

# COPY requirements.txt ./
# RUN pip install --trusted-host pypi.python.org -r requirements.txt

RUN apt-get update && apt-get install -y \
    git \
    ssh \
    sudo \
 && rm -rf /var/lib/apt/lists/*

RUN useradd -m developer && echo "developer:developer" | chpasswd && adduser developer sudo

USER developer

EXPOSE 80

ENV NAME World

CMD ["sleep", "infinity"]