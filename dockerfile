# Use the official Python image from Docker Hub
FROM python:latest

# Set the working directory in the container
WORKDIR /app

# Install the required Python libraries
RUN pip install --no-cache-dir pandas requests pymongo

# Copy the Python script and any other necessary files to the container
COPY dataHandler.py .

COPY datasets/. datasets

# Command to run your Python script
#ENTRYPOINT ["python", "dataHandler.py"]

# Command to sleep for 3600 seconds
ENTRYPOINT ["sleep", "3600"]
