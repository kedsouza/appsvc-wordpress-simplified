From wordpress:latest

RUN apt-get update && apt-get install -y rsync openssh-server
RUN touch /var/log/syn

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/docker-entrypoint.sh
COPY sync.sh /usr/local/bin
COPY wp-config.php /var/www/wordpressappsvc/

RUN chown -R www-data:www-data .

# Install OpenSSH and set the password for root to "Docker!". In this example, "apk add" is the install instruction for an Alpine Linux-based image.
RUN echo "root:Docker!" | chpasswd 

RUN  mkdir -p /var/run/sshd
RUN  mkdir -p /home/site/wwwroot

# Copy the sshd_config file to the /etc/ssh/ directory
COPY sshd_config /etc/ssh/

