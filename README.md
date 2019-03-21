# Build
In project root folder: `docker build -t gitlab.inc -f gitlab.docker .`

# Launch
## First
`docker run -p ${your_http_port}:8080 gitlab.inc`
You may be want to specify ports for SSH and/or HTTPS (not configured).
To do this just add `-p ${your_ssh_port}:22` and/or `-p ${your_https_port}:443` to `run` command
## Any other
`docker start ${container_id}`
## Warning!
On some OS `run` command may be need `privileged` flag, or it will fail (in particular, on macOS 10.13.3 (17D102)).

# Web interface
Launch your browser and go to `http://127.0.0.1:${your_http_port}`

# License
WTFPL
