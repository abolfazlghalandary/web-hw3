# web-hw3

- Alireza Farshi (99101976)
- Mohammad Khalafi (99105418)
- Abolfazl Ghalandary (99102026)

# Step 1 - Frontend

### configure default.conf file

![default.conf](img/default_conf.jpg)

### configure dockerfile

![dockerfile](img/dockerfile.jpg)

### configure docker compose file

![docker compose](img/docker-compose.jpg)

### Result
using "docker-compose up" command:

![result](img/section1-result.jpg)

# Step 2 - Storage services

## auth storage
### create script for table initialization

![create auth table sql](img/create-auth-tables.jpg)

### create shell file

![shell script](img/shell.jpg)

### configure docker compose file

![docker compose](img/docker-compose2.jpg)

### Result
By entering container terminal and using psql:

![result](img/unauthorized_tokens.jpg)

![result](img/user_accounts.jpg)

## auth cache

### configure docker compose

![result](img/redis-docker-compose.jpg)

### Result
By using redis cli:

![result](img/redis-test.jpg)

## ticket storage

### create script for table initialization

![create ticket table sql](img/ticket-sql.jpg)

### create shell file

![shell script](img/ticket-shell.jpg)

### configure docker compose file

![docker compose](img/docker-compose3.jpg)

### Result
By entering container terminal and using psql:

![result](img/ticket-storage-result.jpg)

# Step 3 - Backend services
## auth service

First step is to rewrite hardcoded addresses by service names, then:

### configure Dockerfile

![dockerfile](img/auth-dockerfile.jpg)

### configure docker-compose

![docker-compose](img/auth-docker-compose.jpg)

### Result
By using Postman:

![result](img/auth-result.jpg)

## ticket service

First step is to rewrite hardcoded addresses by service names, then:

### configure Dockerfile

![ticket-dockerfile](img/ticket-dockerfile.jpg)

### configure docker-compose

![docker-compose](img/ticket-docker-compose.jpg)

### Result
By using Postman:

![result](img/ticket-result.jpg)

# Step 4 - Docker Compose

We used docker compose from the first. So now we will have all the project ready by 'docker-compose up' command.

# Step 5 - Load Test

### locustfile configuration

![locustfile](img/locust-file.jpg)

### open locust web interface and start test

![locustfile](img/locust-web.jpg)

### Result

![result](img/locust-result-chart.jpg)
![result](img/locust-table.jpg)
