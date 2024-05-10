# mbeaniii_dev_container

## Build the Docker image
docker build -t mbeaniii_dev_container .

## Run the Docker container with attached volume and mounted ssh directory
docker run -d -v mbeaniii_dev_volume:/home/developer -v C:/Users/MarcusBean/.ssh:/home/developer/.ssh -p 4000:80 mbeaniii_dev_container