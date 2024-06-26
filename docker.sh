docker run -d --cap-add=NET_ADMIN -p 80:80 -p 443:443 -p 443:443/udp \
    -v $PWD/index.html:/home/1engage/gtm-landing-page/index.html \
    -v caddy_data:/data \
    -v caddy_config:/config \
    caddy caddy file-server --domain dev-fnb.1engage.ai


docker run -d -p 80:80 \
    -v $PWD/index.html:/home/1engage/gtm-landing-page/index.html \
    -v caddy_data:/data \
    caddy

