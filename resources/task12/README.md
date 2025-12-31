***# Task 12: Research on Docker Swarm and CronJobs***



***## Overview***



***This document provides a detailed research overview of \*\*Docker Swarm\*\* and \*\*CronJobs\*\*, explaining concepts, architecture, use cases, commands, and practical examples. This task is prepared as part of the DevOps learning and submission workflow.***



***---***



***## 1. Docker Swarm***



***### 1.1 What is Docker Swarm?***



***Docker Swarm is Docker’s native container orchestration tool. It allows you to manage a cluster of Docker nodes as a single virtual system, enabling high availability, scalability, and load balancing.***



***### 1.2 Key Components***



***\* \*\*Manager Node\*\*: Controls the swarm, schedules services, and maintains cluster state***

***\* \*\*Worker Node\*\*: Executes containers as instructed by the manager***

***\* \*\*Service\*\*: Defines how containers should run in the swarm***

***\* \*\*Task\*\*: A running container instance of a service***



***### 1.3 Features***



***\* Native Docker integration***

***\* Declarative service definitions***

***\* Built-in load balancing***

***\* Rolling updates and rollback***

***\* Secure communication using TLS***



***### 1.4 Docker Swarm Architecture***



***\* Swarm Manager (Leader + Followers)***

***\* Worker Nodes***

***\* Overlay Network for inter-container communication***



***### 1.5 Common Docker Swarm Commands***



***```bash***

***docker swarm init***

***docker swarm join***

***docker node ls***

***docker service create***

***docker service ls***

***docker service ps <service-name>***

***```***



***### 1.6 Use Cases***



***\* Microservices deployment***

***\* High availability applications***

***\* Load-balanced container workloads***



***---***



***## 2. CronJobs***



***### 2.1 What is a CronJob?***



***A CronJob is a scheduled task that runs automatically at specified time intervals. In Linux, CronJobs are managed using the `cron` daemon.***



***### 2.2 Cron Syntax***



***```***

***\* \* \* \* \* command***

***| | | | |***

***| | | | +---- Day of week (0-7)***

***| | | +------ Month (1-12)***

***| | +-------- Day of month (1-31)***

***| +---------- Hour (0-23)***

***+------------ Minute (0-59)***

***```***



***### 2.3 Managing CronJobs***



***```bash***

***crontab -e     # Edit cron jobs***

***crontab -l     # List cron jobs***

***crontab -r     # Remove cron jobs***

***```***



***### 2.4 Example CronJobs***



***\* Run a backup every day at midnight***



***```bash***

***0 0 \* \* \* /backup.sh***

***```***



***\* Restart a service every Sunday***



***```bash***

***0 5 \* \* 0 systemctl restart nginx***

***```***



***### 2.5 CronJobs in Containers***



***\* Used for automation tasks***

***\* Scheduled cleanup jobs***

***\* Log rotation***



***---***



***## 3. Docker Swarm + CronJobs (Combined Use Case)***



***### Example Scenario***



***\* Docker Swarm runs a web application***

***\* CronJob performs daily database backup***

***\* CronJob cleans unused Docker images***



***```bash***

***0 2 \* \* \* docker system prune -af***

***```***



***---***



***## 4. Advantages and Limitations***



***### Advantages***



***\* Simple orchestration with Docker Swarm***

***\* Lightweight compared to Kubernetes***

***\* Easy automation using CronJobs***



***### Limitations***



***\* Docker Swarm has limited ecosystem support***

***\* CronJobs require careful permission handling***



***---***



***## 5. Screenshots Section***



***### 5.1 Docker Swarm Initialization***

***!\[Docker Swarm Init](screenshots/swarm-init.png)***



***### 5.2 Swarm Node List***

***!\[Docker Node List](screenshots/node-ls.png)***



***### 5.3 Docker Service Status***

***!\[Docker Service PS](screenshots/service-ps.png)***



***### 5.4 CronJob Configuration (WSL – Linux)***

***!\[Crontab List](screenshots/crontab-list.png)***



***## 6. Conclusion***



***Docker Swarm and CronJobs together provide a simple yet powerful solution for orchestrating containers and automating recurring tasks. This research helps understand real-world DevOps automation workflows.***



***---***



***## 7. References***



***\* Docker Documentation***

***\* Linux Cron Manual Pages***

***\* DevOps Best Practices***



***---***



***\*\*Author:\*\* Deekshitha R***

***\*\*Task:\*\* 12***

***\*\*Domain:\*\* DevOps***



