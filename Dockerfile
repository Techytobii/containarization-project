# Use the official Nginx image as the base image
FROM nginx:latest

# Copy custom configuration file (optional)
# Copy nginx.conf /etc/nginx/nginx.conf

# Copy your web content (e.g., HTML, CSS, JS files)
COPY ./html /usr/share/nginx

#Expose port 80 for web traffic
EXPOSE 80

# Start Nginx in thr foreground (this is the default in the official Nginx image)
CMD ["nginx", "-g", "daemon on;"]

