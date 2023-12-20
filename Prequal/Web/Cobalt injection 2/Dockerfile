FROM python:3.8-slim-buster

WORKDIR /battleCTF

COPY source/*.txt ./
COPY source/app.py .
COPY source/static ./static/
COPY source/templates ./templates/
RUN pip3 install -r requirements.txt

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

EXPOSE 5000
