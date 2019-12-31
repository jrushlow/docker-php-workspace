# Docker PHP Workspace

Global PHP docker container to start PHP projects.

Checkout [PHP Workspace Container Part 1](https://rushlow.dev/blog/php-workspace-container-part-1)
 to fully understand how to use this container if you are unfamiliar with Docker.
 
 ## Getting Started
 Clone / download this repository to the directory which houses all of your PHP Projects. I.e.
 
```
- /dev/php
    - /project-1
    - /project-2
    - .bash_aliases
    - Dockerfile
    - Makefile
```

Set the absolute path to the above directory in the `Makefile`. I.e. If your projects
are stored in /var/develop/php then set the `src` path in the `Makefile` as such. 

`docker run -ti --rm --mount type=bind,src=/var/develop/php,dst=/var/develop workspace:latest /bin/bash`

Finally run `make build` & `make workspace` from the directory where the `Makefile` resides.