## Dockerized Ghost

This dockerized version of ghost used a SQLite as Database and is saved in the `content/data` directory.

By the way, there are a jobs configured to make a backup of Database every day at mid night and is storage in the `backups-db` directory

## Install

Clone this repo `git clone git@github.com:kakashysen/dockerized-ghost.git`

Get the last version of ghost 

```bash
wget https://ghost.org/zip/ghost-latest.zip
```

Decompress the ghost zip 

```bash
unzip ghost-latest.zip && rm ghost-latest.zip
```

Build docker

This process may take some time, be patients 

```bash
docker-compose build
```


Start docker container

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
