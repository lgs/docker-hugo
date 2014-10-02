docker-hugo
===========

It is a Docker base image for static sites generated with Hugo. 

With a footprint of 14.19 MB (demo site included), [lgs/docker-hugo](https://github.com/lgs/docker-hugo) is the github repo for trusted docker hub: [lgsd/docker-hugo](https://registry.hub.docker.com/u/lgsd/docker-hugo/). 

It is so small because based on Diamond, which is the smallest lightweight Docker container on the planet. With a footprint of 1.215 MB, it is even smaller than busybox:

	REPOSITORY      TAG         IMAGE ID        CREATED          SIZE
	lgsd/diamond    latest      b87c1c99c103    3 seconds ago    1.215 MB 
	busybox         latest      769b9341d937    2 days ago       2.489 MB
	ubuntu          12.04       8dbd9e392a96    8 months ago     131.3 MB


( see [https://registry.hub.docker.com/u/lgsd/diamond/](lgsd/diamond) )

## Use

    $ docker run -d -p 1313:1313 -t lgsd/docker-hugo
    Unable to find image 'lgsd/docker-hugo' locally
    Pulling repository lgsd/docker-hugo
    4c1b3414d5c7: Download complete 
    511136ea3c5a: Download complete 
    091f25141598: Download complete 
    ffc94ca58a3b: Download complete 
    bfa7f7cadbff: Download complete 
    81b20357cc0b: Download complete 
    a377f7cc438d: Download complete 
    8955ce29c55b: Download complete 
    14a5fb4efb76: Download complete 
    7eac7b01e60de45fe537dd83e140726861c25782f4271f2fa9ecf171baefa544

    lsoave@basenode:~$ docker ps -a
    CONTAINER ID        IMAGE                COMMAND             CREATED       STATUS                   PORTS              NAMES
    7eac7b01e60d lgsd/docker-hugo:latest "/bin/hugo server -w 8 seconds ago  Up 7 seconds         0.0.0.0:1313->1313/tcp   yonath   

    lsoave@basenode:~$ docker images
    REPOSITORY                       TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
    lgsd/docker-hugo                 latest              4c1b3414d5c7        3 minutes ago       14.19 MB
    lgsd/diamond                     latest              bfa7f7cadbff        7 months ago        1.215 MB
    debian                           wheezy              99bedb6181f9        4 days ago          85.19 MB

now open [http://localhost:1313/](http://localhost:1313/)

## Copyright

(The MIT License)

Copyright (c) 2013 Luca G. Soave

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the 'Software'), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

