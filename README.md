Dockerized Spring Boot Service 1
=================================

To start the application using IntelliJ (without maven or docker)

    Run using IntelliJ

    http://localhost:8080
    
To run application using Maven (without docker)

    $ mvn package && java -jar target/spring-boot-service-1-0.0.1-SNAPSHOT.jar

To start docker

    From Applications or Launch Pad -> Docker QuickStart Terminal

To build using docker spotify plugin (in the same terminal which is running docker successfully)

    $ docker build -t raseshdesai/spring-boot-service-1 .

To run as a docker container following building your image    
    
    $ docker run -d -p 8085:8080 -t raseshdesai/spring-boot-service-1
    
    (-d: run as a daemon and you can use logs/top/inspect to look further, -t: allocate a pseudo terminal, -i: 
    interactive, which seems default)

Verifying

    http://docker-host-ip:8085 
    
    (docker-host-ip is ip address of virtual box and is printed initially when docker starts or you can also at anytime 
    run $ docker-machine ip)
    
    http://localhost:8090
    
    (you can run this as far as you're port forwarding from virtual box to your localhost, Virtual Box -> Settings ->
     Network -> Port Forwarding: Add a new port forwarding rule with {host port: 8090, guest port 8085})
    
Other useful commands

    $ docker images (shows all downloaded/built images)
    $ docker ps (shows only running containers)
    $ docker ps -a (shows all containers, even exited ones)
    $ docker logs <container-id> (container-id obtained from ps command, shows logs)
    $ docker top <container-id> (container-id obtained from ps command, shows processes running within this container)
    $ docker inspect <container-id> (container-id obtained from ps command, shows all container config as json)
    $ docker stop <container-id>
    $ docker rm -f <container-id> (remove container, -f: force and you can remove without stopping)
    $ docker rmi <image-name> (removes image)
    
To push to your docker hub

    $ docker login
    $ docker push raseshdesai/spring-boot-service-1

Automated Docker Build (triggered on commit to this github repo)
    
    https://hub.docker.com/r/raseshdesai/dockerized-spring-boot-service-1/

Reference:

    https://spring.io/guides/gs/spring-boot-docker/
    https://hub.docker.com/_/maven/
