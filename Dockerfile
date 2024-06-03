# Use the official Python image from the Docker Hub
FROM python:3.12-slim

# Set the working directory
WORKDIR /app

# Copy the rest of the application code into the container
COPY . .

RUN echo $(ls -alhrt)
# Install the dependencies
RUN pip install .[all]

# Define the command to run the application
CMD ["python", "main.py"]