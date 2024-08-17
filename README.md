Portfolio Website Hosting with Nginx and Docker
Overview -

This project packages a static website into a Docker container using Nginx. Docker makes it easy to share and deploy your website efficiently. By the end of this project, you'll have a portable container that serves your static site.

Prerequisites -

Docker installed on your system.
Basic command line knowledge.

Project Structure -
Ensure your website files are organized as follows:

my-Portfolio-website/
├── index.html
├── styles.css
└── script.js


Steps to Package and Deploy
1. Prepare Your Static Website
Make sure your HTML, CSS, and JavaScript files are ready.

2. Create a Dockerfile
In your project directory (my-static-website/), create a Dockerfile with the following content:

3. Build the Docker Image
Navigate to your project directory and build the Docker image:

docker build -t my-static-website .

5. Run the Docker Container
Run the container, mapping port 80 in the container to port 8080 on your host:

docker run -d -p 8080:80 --name my-static-website-container my-static-website

5. Access Your Website
Open your browser and go to http://localhost:8080 to view your website.

6. Share Your Docker Image
To share your image, push it to Docker Hub:

Login to Docker Hub:

docker login
Tag your image:
docker tag my-static-website your-dockerhub-username/my-static-website
Push your image:
docker push your-dockerhub-username/my-static-website

7. Clean Up
To stop and remove the container:

docker stop my-static-website-container
docker rm my-static-website-container

To remove the Docker image:

docker rmi my-static-website

Conclusion
You've successfully packaged your static website into a Docker container using Nginx, making deployment and sharing easy. This project provides a foundation for understanding Dockerized web applications.

This README file includes the necessary steps and information in a concise and easy-to-understand manner.
