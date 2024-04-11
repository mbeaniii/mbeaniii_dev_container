# mbeaniii_dev_container

## Build the Docker image
docker build -t mbeaniii_dev_container .

## Run the Docker container
docker run -d -v mbeaniii_dev_volume:/app -p 4000:80 mbeaniii_dev_container