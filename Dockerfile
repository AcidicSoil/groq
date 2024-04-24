FROM python:3.11

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the app code
COPY . .

# Expose the port
EXPOSE 8501

# Run the command to start the app
CMD ["streamlit", "run", "app.py"]