#Use a base image
FROM alpine



#install required softwares

RUN apk add --update redis


#specify startup command

CMD ["redis-server"]