FROM python:3.12-slim

# Evita prompt de pip
ENV PIP_NO_CACHE_DIR=1

WORKDIR /code

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app ./app

EXPOSE 8000
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
