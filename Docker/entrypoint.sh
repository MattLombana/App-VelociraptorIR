#! /bin/bash

# Generate server configuration based on env vars
/velociraptor config generate --merge '{"Frontend":{"hostname":"'$URL'"},"API":{"bind_address":"0.0.0.0"},"GUI":{"bind_address":"0.0.0.0","bind_port":443},"Monitoring":{"bind_address":"0.0.0.0"},"Client":{"server_urls":["'$URL':8000/"]}}' > /config/server.config.yaml

# Generate client configuration
/velociraptor --config /config/server.config.yaml config client > /config/client.config.yaml
/velociraptor --config /config/server.config.yaml user add "$VELOCIRAPTOR_USER" "$VELOCIRAPTOR_PASS" --role administrator

# Start Velociraptor
/velociraptor --config /config/server.config.yaml frontend -v
