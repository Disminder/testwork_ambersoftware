# Docker options
## Prevent Postgres from trying to allocate 25% of total memory
postgresql['shared_buffers'] = '1MB'

# Disable Prometheus node_exporter inside Docker.
node_exporter['enable'] = false

# Manage accounts with Docker
manage_accounts['enable'] = false

# Set network settings
external_url "http://gitlab.amber.software/"
nginx['listen_port'] = 8080
# Change it because default unicorn port is 8080
unicorn['port'] = 8081
