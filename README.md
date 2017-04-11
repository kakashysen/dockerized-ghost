## Dockerized Ghost

This dockerized version of ghost used a SQLite as Database and is saved in the `content/data` directory.

By the way, there are a jobs configured to make a backup of Database every day at mid night and is storage in the `backups-db` directory

__Note__

If you wan to deploy in Digital Ocean server, you need to add 1G of swap to your server, if you don't know how do that check this [tutorial](https://www.digitalocean.com/community/tutorials/how-to-add-swap-on-ubuntu-14-04)

## Requirements

- `docker` 17.03.1-ce, build c6d412e

- `docker-compose` version 1.11.2


## Install

Clone this repo `git clone git@github.com:kakashysen/dockerized-ghost.git`

Enter in to directory `dockerized-ghost`

`cd dockerized-ghost`

Get the last version of ghost 

```bash
wget https://ghost.org/zip/ghost-latest.zip
```

Decompress the ghost zip 

```bash
unzip ghost-latest.zip && rm ghost-latest.zip
```

when unzip the ghost, it ask you to replace the README.md file, so answer yes and continue the process


Build docker

This process may take some time, be patients 

```bash
docker-compose build
```


Start docker container in development mode run

```bash
docker-compose up
```

Ready! :raised_hands:, now you can access to ghost from your browser `http://localhost:2368`


### For production

Replace `http://your.domain.com` in file `nginx.conf` `and config.js` with your own domain.

Start docker container with production file

```bash
docker-compose -f docker-compose-prod.yml up
```

Now try your domain or localhost in your browser, this services now runs in the port `80` :muscle: :sunglasses:
