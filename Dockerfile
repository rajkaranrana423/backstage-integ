FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website
COPY . /usr/share/nginx/html

# Expose HTTP port
EXPOSE 80

# Run nginx
CMD ["nginx", "-g", "daemon off;"]
