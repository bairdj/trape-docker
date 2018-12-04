FROM python:2
RUN apt-get update && apt-get install unzip
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python", "./trape.py"]