FROM node:8-slim
RUN apt-get update  && apt-get install -y nginx
WORKDIR /var/www/html
# WORKDIR /usr/src/app
# COPY ["package.json",  "./"]
# RUN npm install
# COPY . .
# RUN npm run build
# RUN ln -sf /dev/stdout /var/log/nginx/access.log \
#	&& ln -sf /dev/stderr /var/log/nginx/error.log

# RUN ls
COPY ./build/ ./
RUN ls
EXPOSE 80
# RUN cp -r build/* /var/www/html \
#    && rm -rf /user/src/app
CMD ["nginx","-g","daemon off;"]
