# ustackweb-nginx-example

## Environment Requirements

Have a working [Docker](https://www.docker.com/) environment with [fig](http://fig.sh).

Have the following go packages installed:
    
    [github.com/UserStack/ustackd](https://github.com/UserStack/ustackd)
    [github.com/UserStack/ustackweb](https://github.com/UserStack/ustackweb)

Then clone this repository relatively to the $GOPATH:

    git clone https://github.com/UserStack/ustackweb-nginx-example.git $GOPATH/../ustackweb-nginx-example

## Getting Started

Open the repository

    cd $GOPATH/../ustackweb-nginx-example

Setup the project

    make prepare

Start the project

    make run

## License

See [LICENSE](LICENSE).
