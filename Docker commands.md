How to build then start the image:
`docker-compose up --build`

How to start up the image:
`docker-compose up`

How to destroy the image:
`ctrl` + `c`
`docker-compose down`

To list docker images available inside the folder (I can only see my rails image when I have it running with `docker-compose up`):
`docker ps`

To enter the docker image for rails:
`docker-compose run web /bin/bash`

To enter the docker image for postgres:
`docker-compose run db /bin/bash`

Type `exit` to exit the image

`heroku run rake db:migrate`
`heroku run docker-compose run web rake db:migrate`
`heroku run rails console`
`heroku run bash`
`docker-compose run web rake db:create`

To deploy latest version of image to heroku:
`docker-compose up --build`
`docker-compose down`
<!-- `docker-compose push web` -->
`heroku container:push web`
`heroku container:release web`
