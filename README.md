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

