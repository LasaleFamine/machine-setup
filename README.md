
# Machine Setup

> Useful BASH scripts for first setup of new Virtual Machines. Made for personal use.

## What's included

### OS: Ubuntu (16.04 LTS tested)

* NVM + Nodejs LTS
* Docker (latest)
* docker-compose (v1.18.0)
* Nginx

## Usage

Clone the repository and enter the directory:
```bash
git clone https://github.com/LasaleFamine/machine-setup && cd machine-setup
```

Run the OS specific BASH script:

```bash
# For Ubuntu
./ubuntu.sh
```

## Install only specific components

Run the specific BASH script for the current OS:

```bash
# Installing Docker on Ubuntu
./src/ubuntu/docker.sh
```


## License

MIT © LasaleFamine


