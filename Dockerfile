FROM python:3.11.2 
EXPOSE 5000
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN flask db upgrade
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]


