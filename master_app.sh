sudo docker volume create app
sudo docker service create --name web-server --replicas 12 -dt -p 80:80 --mount type=volume,src=app,dst=/usr/local/apache2/htdocs/ httpd