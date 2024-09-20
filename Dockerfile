FROM python:3.11-slim

WORKDIR /app
COPY . .

RUN pip install gunicorn
RUN pip install -r requirements.txt

# Expose the port on which the Flask app will run
EXPOSE 8080

# Define the command to run the application using Gunicorn on port 8080
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]
