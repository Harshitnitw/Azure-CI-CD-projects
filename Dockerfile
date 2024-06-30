FROM python:3.8-slim-buster
WORKDIR /app
COPY . .

RUN apt update -y

RUN pip install --no-cache-dir --upgrade -r requirements.txt
EXPOSE 5000
CMD ["python","application.py"]