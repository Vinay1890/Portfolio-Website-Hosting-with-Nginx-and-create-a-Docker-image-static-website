# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Copy the static website files to the Nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80
