restart: deploy
	ssh zeta 'docker exec letsencrypt /usr/sbin/nginx -c /config/nginx/nginx.conf -s reload'

deploy:
	scp -r ./* zeta:/mnt/user/appdata/letsencrypt/nginx