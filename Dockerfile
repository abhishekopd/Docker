FROM nginx:latest

RUN rm -f /usr/share/nginx/html/*

COPY ./source/* /usr/share/nginx/html/

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]