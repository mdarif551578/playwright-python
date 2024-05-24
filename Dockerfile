FROM python:3.9-slim

RUN apt-get update && apt-get install -y build-essential libssl-dev vim nano

RUN pip install pytest-playwright

RUN pip install asyncio jupyterlab

RUN playwright install

WORKDIR /app

COPY . . 

ENTRYPOINT [ "/bin/bash" ]
