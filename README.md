# App-VelociraptorIR

## Running the Containers

1. Run `docker-compose -f ./Docker/docker-compose.yml build`
2. Update the following volume mounts in [server-compose.yml](./Docker/server-compose.yml)
    * `../Data/config:/config`
    * `../Data/velociraptor:/opt/velociraptor`
    * `../Data/logs:/opt/velociraptor/logs`
3. Update the following environment variables in [server-compose.yml](./Docker/server-compose.yml)
    * `URL=example.com # CHANGEME`
    * `VELOCIRAPTOR_USER=velociraptor # CHANGEME`
    * `VELOCIRAPTOR_PASS=changeme # CHANGEME`
4. Run `docker-compose -f ./Docker/docker-compose.yml up -d`

## First Time Setup

1. Visit <https://your-ip>
2. Log in with the credentials you set in the docker-compose file
3. Configure Velociraptor as you see fit. The documentation is [here](https://www.velocidex.com/docs/)
