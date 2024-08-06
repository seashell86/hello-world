FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY hello-world.py .

# Expose the port the app runs on
EXPOSE 5000

# Run hello-world.py when the container launches with gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "hello-world:app"]