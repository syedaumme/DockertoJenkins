FROM python:alpine3.9 
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt 
EXPOSE 5000 
ENV FLASK_APP=application.py
CMD ["flask", "run", "--host=0.0.0.0"]
 
