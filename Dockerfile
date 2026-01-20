# ngins base image
FROM nginx:alpine

#Default nginx html folder clear karo

RUN rm -rf /usr/share/nginx/html/*

#websit files copy karo

COPY index.html /usr/share/nginx/html/

COPY style.css /usr/share/nginx/html/

COPY script.js /usr/share/nginx/html/

COPY img /usr/share/nginx/html/

#expose port 80

EXPOSE 80

#nginx start command

CMD ["nginx","-g","daemon off;"]
