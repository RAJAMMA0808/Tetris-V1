# Use the official Nginx image as the base image
FROM nginx

# Copy custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose the port that the Nginx server will listen on (usually 80 by default)
EXPOSE 80

# Start the Nginx server when the container starts
CMD ["nginx", "-g", "daemon off;"]
