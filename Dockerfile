FROM charlienormand/docker-alpine-perl-devel-pi
RUN apk update && \
    apk add make && \
    apk add tzdata && \
    apk add g++ && \
	apk add perl-xml-libxml-simple && \
	apk add perl-json && \
    apk add --no-cache git

RUN curl -L http://cpanmin.us | perl - App::cpanminus
RUN cpanm CPAN::Meta \
 File::HomeDir \
 JSON
  
RUN git clone https://github.com/thoukydides/heatmiser-wifi.git

EXPOSE 80
