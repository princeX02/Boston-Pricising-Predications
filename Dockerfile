FROM python:3.11

ENV PORT=8000
WORKDIR /app
COPY . /app
RUN  pip install -r requirements.txt

EXPOSE $PORT
CMD ["sh", "-c", "gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app"]
