# Use an official nginx image as a parent image
FROM nginx:latest

# Copy the HTML and CSS files to the nginx server
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./styles.css /usr/share/nginx/html/styles.css

# Expose port 80
EXPOSE 80

# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
