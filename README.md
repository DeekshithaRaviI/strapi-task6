# 🚀 Getting started with Strapi

Strapi comes with a full featured [Command Line Interface](https://docs.strapi.io/dev-docs/cli) (CLI) which lets you scaffold and manage your project in seconds.

### `develop`

Start your Strapi application with autoReload enabled. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-develop)

```
npm run develop
# or
yarn develop
```

### `start`

Start your Strapi application with autoReload disabled. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-start)

```
npm run start
# or
yarn start
```

### `build`

Build your admin panel. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-build)

```
npm run build
# or
yarn build
```

## ⚙️ Deployment

Strapi gives you many possible deployment options for your project including [Strapi Cloud](https://cloud.strapi.io). Browse the [deployment section of the documentation](https://docs.strapi.io/dev-docs/deployment) to find the best solution for your use case.

```
yarn strapi deploy
```

## 📚 Learn more

- [Resource center](https://strapi.io/resource-center) - Strapi resource center.
- [Strapi documentation](https://docs.strapi.io) - Official Strapi documentation.
- [Strapi tutorials](https://strapi.io/tutorials) - List of tutorials made by the core team and the community.
- [Strapi blog](https://strapi.io/blog) - Official Strapi blog containing articles made by the Strapi team and the community.
- [Changelog](https://strapi.io/changelog) - Find out about the Strapi product updates, new features and general improvements.

Feel free to check out the [Strapi GitHub repository](https://github.com/strapi/strapi). Your feedback and contributions are welcome!

## ✨ Community

- [Discord](https://discord.strapi.io) - Come chat with the Strapi community including the core team.
- [Forum](https://forum.strapi.io/) - Place to discuss, ask questions and find answers, show your Strapi project and get feedback or just talk with other Community members.
- [Awesome Strapi](https://github.com/strapi/awesome-strapi) - A curated list of awesome things related to Strapi.

---

<sub>🤫 Psst! [Strapi is hiring](https://strapi.io/careers).</sub>
Task 3: Dockerized Strapi Setup with PostgreSQL & Nginx
Objective

To set up a complete Dockerized environment for a Strapi application using PostgreSQL as the database and Nginx as a reverse proxy.

Implementation Details

Created a user-defined Docker network (strapi-net) to enable communication between containers.

Deployed a PostgreSQL container with the required environment variables:

POSTGRES_USER

POSTGRES_PASSWORD

POSTGRES_DB

Configured a Strapi container to connect to PostgreSQL using environment variables.

Set up an Nginx container as a reverse proxy:

Mapped host port 80 → Nginx

Configured nginx.conf to forward requests from http://localhost to Strapi on port 1337.

Ensured all three containers (PostgreSQL, Strapi, Nginx) run on the same Docker network.

Verified successful access to the Strapi Admin Dashboard via:

http://localhost/admin

Tools Used

Docker

Docker Compose

PostgreSQL

Strapi

Nginx

Deliverables

Docker Compose configuration for multi-container setup

nginx.conf for reverse proxy

README documentation

Loom video demonstrating the working setup

Work update shared in the team channel with PR and Loom links

Task 4: Docker Deep Dive
Objective

To understand Docker fundamentals, architecture, and real-world usage through documentation and examples.

Topics Covered

Problem Docker Solves

Eliminates environment inconsistency and simplifies application deployment.

Virtual Machines vs Docker

Docker containers are lightweight and faster compared to full OS-based virtual machines.

Docker Architecture

Docker Engine

Docker CLI

Container runtime

Images, containers, and volumes

Dockerfile Deep Dive

Base image

Working directory

Copying files

Installing dependencies

Exposing ports

CMD and ENTRYPOINT

Key Docker Commands

Image and container management

Logs and inspection

Docker Networking

Bridge networks

Custom user-defined networks

Volumes & Data Persistence

Persisting data outside containers

Docker Compose

Managing multi-container applications using YAML

Outcome

Developed a strong understanding of Docker concepts, container lifecycle, networking, and multi-container orchestration using Docker Compose.