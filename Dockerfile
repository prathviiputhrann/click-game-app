# Use an Nginx base image to serve static files
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your game files into nginx's html folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
