# Welcome to my homelab!
In this repository you may find the (public) files needed to set up a homelab that looks just like mine!
# Current services
- [Caddy](https://caddyserver.com/): A reverse proxy used for resolving different domain names.
    - A DNS name is required for caddy to work.
    - Create a `.env` file following the `envCaddyTemplate.txt` to insert your local values.
- [Immich](https://immich.app/): A self hosted photo library, rich in features, finally ditch that google photos subsciption!
    - After setting up additional files, run `docker compose up -d` to start the service.
    - Create a `.env` file following the `envImmichTemplate.txt` to insert your local values.
    - An example `.env` file can be downloaded using `wget -O .env https://github.com/immich-app/immich/releases/latest/download/example.env`.
- [Plex](https://www.plex.tv/): A self hosted media server, you will finally be able to watch your (legally obtained) media easily!
    - Create a `.env` file following the `envPlexTemplate.txt` to insert your local values.
    - Using [qbittorrent](https://www.qbittorrent.org/), [sonarr](https://sonarr.tv/), [radarr](https://radarr.video/), [jackett](https://github.com/Jackett/Jackett), [overseerr](https://overseerr.dev/)
    - A really useful guide on how to set everything up can be found [here](https://gist.github.com/rickklaasboer/b5c159833ff2971fccd32296d8ba2260)
