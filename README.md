## Project Overview

For this project you will be creating a fresh repository - the link is in Pilot under Content - Projects - Project 5. This is the repo you will be using for this project.

You will notice that each part has "Milestone" labels and dates. This project is not due until 4/22. Completion of each milestone **by the date specificied for the milestone** will get you 1 pt of extra credit per milestone date met. To qualify, you must submit your project to the Dropbox for Project 5 in Pilot.

## Part 1 - Dockerize it

### Documentation

- how you installed docker + dependencies (WSL2, for example)
    - I went to the website "https://www.docker.com/products/docker-desktop/" and downloaded Docker Desktop for Windows. In a previous class, I already made my ubuntu instance viable with WSL2. I made sure inside the settings of Docker Desktop that "Use the WSL 2 based engine (Windows Home can only run the WSL 2 backend)" was checked off and it was.
- how to build the container
    - Inside my repo, I made a Dockerfile with the following contents:
        - FROM ubuntu/apache2:latest

          RUN rm /var/www/html/index.html

          COPY website /var/www/html/

          EXPOSE 80

          CMD apachectl -D FOREGROUND
    - After making my Dockerfile, I ran the command "docker build -t my-apache2 ."
- how to run the container
    - I ran the container using the command "docker run -dit --name my-running-app -p 81:80 my-apache2"
- how to view the project (open a browser...go to ip and port...)
    - I went to my browser and typed in "http://localhost:81" and got this result:
    ![HelloWorld](images/HelloWorld.png)

## Part 2 - GitHub Actions and DockerHub

- Create DockerHub public repo
  - process to create
- Allow DockerHub authentication via CLI using Dockhub credentials
- Configure GitHub Secrets
  - what credentials are needed - DockerHub credentials (do not state your credentials)
  - set secrets and secret names
- Configure GitHub Workflow
  - variables to change (repository, etc.)- Create DockerHub public repo
  - process to create
- Allow DockerHub authentication via CLI using Dockhub credentials
- Configure GitHub Secrets
  - what credentials are needed - DockerHub credentials (do not state your credentials)
  - set secrets and secret names
- Configure GitHub Workflow
  - variables to change (repository, etc.)