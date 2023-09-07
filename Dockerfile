<<<<<<< HEAD
# Use existing docker image as base
FROM alpine
RUN apk add --update redis

CMD ["redis-server"]


# DOCKER FILE
Its almost the same most of the times:
1. Specifying a base image
2. Run commands and install additional programs 
3. Specify command to start the container


Dockerfile --> docker client--> docker server --> usable image!  (docker build .)

WRITING A DOCKER FILE IS LIKE: no OS in your system but you have to install Chrome on it.

docker build .---> giving docker file to docker CLI {Take a docker file and build an image out of it}
                                                    { the dot is specifying the build context like what files and folders to include and belong to our project}
# Why alpine?
It comes with predefined or installed set of programs that are useful to you basically ACTS AS BASE

#Take away
Take image generated in previous step, create a new container out of it, and we execute the command in the container or make changes to the file system.
We then look at that container, take a snapshot of its file system and save it as output for next instruction along the lane into the image. Then when there is no more instructions to execute the final image generated is the output image which is the final image.  


=======
FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 5000
ENV NAME vibha
CMD ["python","app.py"]
>>>>>>> 2607bde (First commit)
