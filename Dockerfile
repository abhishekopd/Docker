FROM nginx:latest

COPY ./source/* /usr/share/nginx/html/

RUN rm -f /usr/share/nginx/html/*

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]