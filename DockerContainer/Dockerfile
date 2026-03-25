# Build from repository root (CS651-Project-2):
#   docker build -f DockerContainer/Dockerfile .
# Cloud Run sets PORT; Apache must listen on that port.
FROM httpd:2.4

RUN rm -rf /usr/local/apache2/htdocs/*

COPY DockerContainer/docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

COPY index.html signin.html about.html contact.html /usr/local/apache2/htdocs/
COPY css/ /usr/local/apache2/htdocs/css/
COPY js/ /usr/local/apache2/htdocs/

RUN chmod -R 755 /usr/local/apache2/htdocs/

EXPOSE 8080

ENTRYPOINT ["/docker-entrypoint.sh"]
