FROM nginx

# copy the info of the builded web app to nginx
COPY ./build/web /usr/share/nginx/html

# Expose and run nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]