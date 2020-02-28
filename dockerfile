FROM httpd
RUN apt-get update
RUN apt-get install wget -y && apt-get install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page251/zonebiz.zip /tmp/sree.zip
RUN cd /tmp && unzip sree.zip
#RUN unzip sree
RUN cp -rf /tmp/zonebiz/* /usr/local/apache2/htdocs/

