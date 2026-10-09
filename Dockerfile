FROM python:3.7
WORKDIR /app
RUN apt-get update && apt-get install -y gcc libpq-dev
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 4000
CMD ["python", "main.py"]
