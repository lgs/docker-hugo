FROM lgsd/diamond

MAINTAINER Luca G. Soave <luca.soave@gmail.com>

COPY ./hugo_0.12_linux_amd64 /bin/hugo
ADD  ./blog /blog

CMD  ["/bin/hugo", "server", "-w", "-s", "/blog"]

EXPOSE 1313
