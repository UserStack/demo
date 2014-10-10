default: run
run:
	fig up
prepare:
	make logs
	make certs
	make build
build: clean
	make build_ustackweb
	make build_ustackd
build_ustackweb:
	mkdir -p tmp
	cp -R ${GOPATH}/src/github.com/UserStack/ustackweb tmp/ustackweb
	cd tmp/ustackweb && make prepare_assets
	fig build ustackweb
build_ustackd:
	mkdir -p tmp
	cp -R ${GOPATH}/src/github.com/UserStack/ustackd tmp/ustackd
	fig build ustackd
logs:
	mkdir -p nginx-web/logs
	mkdir -p nginx-app/logs
certs:
	mkdir -p nginx-web/certs
	cd nginx-web/certs && \
		openssl genrsa -des3 -out server.key 1024 && \
		openssl req -new -key server.key -out server.csr && \
		cp server.key server.key.org && \
		openssl rsa -in server.key.org -out server.key && \
		openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
test:
	fig start
	sleep 10
	httperf --server myexample.com --port 443 --num-conns 100
	fig stop
clean:
	rm -rf tmp
