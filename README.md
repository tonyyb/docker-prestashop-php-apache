# Docker images for PrestaShop development

## Requirements

These images requires **Docker** and **Docker Compose**.

## Installation

1. Copy `docker-compose.yml` file to your PrestaShop project root path, and edit it according to your needs ;

2. Copy content of `.env.example` file and put it into a `.env` file at project root ;

3. Put your PrestaShop website in `htdocs` folder ;

4. From your project directory, start up your application by running:

```sh
docker-compose up
```

## URLs

* PrestaShop : [`http://localhost:4000`](http://localhost:4000)
* PhpMyAdmin : [`http://localhost:4001`](http://localhost:4000)
* MailHog : [`http://localhost:4025`](http://localhost:4025)
* kibana : [`http://localhost:5601`](http://localhost:5601)
* ElasticSearch : [`http://elasticsearch:9200`](http://elasticsearch:9200)

## Docker Images

These docker images are configured in `docker-compose.yml` file. 
You can comment or uncomment some services according to your project.

* [`tonyyb/prestashop-php-apache:7.2`](https://hub.docker.com/r/tonyyb/laravel-php/)
* [`mysql:5.7`](https://hub.docker.com/_/mysql/) ;
* [`phpmyadmin/phpmyadmin`](https://hub.docker.com/r/phpmyadmin/phpmyadmin/) ;
* [`mailhog/mailhog:v1.0.0`](https://hub.docker.com/r/mailhog/mailhog) ;
* [`tonyyb/prestashop-elasticsearch:5.6.15`](https://hub.docker.com/_/elasticsearch) ;
* [`docker.elastic.co/kibana/kibana:5.6.15`](https://hub.docker.com/_/kibana) ;

## Contributing

Contributions are welcome!
Leave an issue on Github, or create a Pull Request.

## Licence

This work is under [MIT](LICENCE) licence.
