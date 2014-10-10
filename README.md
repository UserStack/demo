# Demo of a complete UserStack environment

Example of a deployment of [ustackweb](https://github.com/UserStack/ustackweb) with [Single Sign-on](http://de.wikipedia.org/wiki/Single_Sign-on) behind [NGINX Reverse Proxy](http://nginx.com/resources/admin-guide/reverse-proxy/) based on [Docker](https://www.docker.com/) containers.

## Docker Containers

![image](./docs/containers.jpg)

## Environment Setup

Have a working [Docker](https://www.docker.com/) environment with [fig](http://fig.sh).

Install the following:

* [github.com/UserStack/ustackd](https://github.com/UserStack/ustackd)
* [github.com/UserStack/ustackweb](https://github.com/UserStack/ustackweb)

## Getting Started

Setup the project

    make prepare

Run the docker containers

    make run

## Configuration

Set the domain in the [fig.yml](fig.yml) as well as in the [github.com/UserStack/ustackweb](https://github.com/UserStack/ustackweb) project.

## FAQ

### Google Chrome Domain Cookie

To support the subdomain cookie read/write in Google Chrome browser the domain must have a valid TLD ending.

See [Chromium#56211](https://code.google.com/p/chromium/issues/detail?id=56211) and [Public Suffix](https://publicsuffix.org/learn/).

## License

See [LICENSE](LICENSE).
