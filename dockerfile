# Use an official NGINX runtime as a parent image
FROM nginx:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Make the container's port 80 available to the outside world
EXPOSE 80

# Run nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]