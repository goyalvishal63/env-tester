FROM python:3.11-slim-buster as builder

COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install --trusted-host pypi.python.org -r requirements.txt

COPY src /app/

EXPOSE 80

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
