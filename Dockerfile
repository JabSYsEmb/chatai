# Use the official Anaconda runtime as a base image
FROM continuumio/anaconda3:latest

# Set the working directory in the container
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install any necessary dependencies
RUN conda install --yes --file requirements.txt

# Expose the Jupyter Notebook port
EXPOSE 8888

# Start Jupyter Notebook by default
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser"]
