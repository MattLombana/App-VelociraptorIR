FROM ubuntu:latest

ARG release_version
ARG binary_version

RUN apt-get update && apt-get upgrade -y && apt-get install -y wget
RUN wget "https://github.com/Velocidex/velociraptor/releases/download/v$release_version/velociraptor-v$binary_version-linux-amd64" -O velociraptor
COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh /velociraptor

CMD ["/velociraptor"]
