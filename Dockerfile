# official Python base image
FROM python:3.9-slim

# Set a working directory inside the container
WORKDIR /app

# Copy the application file into the container
COPY app.py .

# Install the Flask web framework
RUN pip install flask

# Expose port 5000 for the web application
EXPOSE 5000

# run the application
CMD ["python", "app.py"]
