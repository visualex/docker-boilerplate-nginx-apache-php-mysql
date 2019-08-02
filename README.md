# testsite.com

This is proof-of-concept for a working docker-compose combo of reverse-proxy, apache, php, mysql

* clone this somewhere docker can access, cd into this folder
* make sure nothing is running on your docker machine with `./stop`
* bring it all up by running `./init`
* add a `127.0.0.1 testsite.com` record to your hosts `/etc/hosts`
* `curl -I http://testsite.com` will give you a 200 response code.
* open in a browser to check that nginx, apache, php, mysql all work together in peaceful harmony.
* keep this somewhere as its a cool boilerplate for your ideas
