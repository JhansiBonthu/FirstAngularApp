#Use a base image
FROM node:alpine



#install required softwares

RUN mkdir /usr/angularapp
RUN chmod -Rf 777 /usr/angularapp
WORKDIR /usr/angularapp

COPY . .

RUN npm config set registry http://registry.npmjs.org/
RUN npm config set ca ""
#RUN npm install
#RUN npm update
RUN npm install --save-dev @angular-devkit/build-angular
RUN npm install -g @angular/cli@latest

#COPY . .


#specify startup command

CMD ng serve --host 0.0.0.0
 