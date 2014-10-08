# ustackweb-nginx-example

## Environment Setup

Have a working [Docker](https://www.docker.com/) environment with [fig](http://fig.sh).

Install the following:
    
* [github.com/UserStack/ustackd](https://github.com/UserStack/ustackd)
* [github.com/UserStack/ustackweb](https://github.com/UserStack/ustackweb)

## Getting Started

Clone the repository

	git clone https://github.com/UserStack/ustackweb-nginx-example.git $GOPATH/../ustackweb-nginx-example
    cd $GOPATH/../ustackweb-nginx-example

Setup the project

    make prepare

Run the docker containers

    make run

## License

See [LICENSE](LICENSE).
