# Use a base image
FROM ubuntu:latest

# Install OpenSSH server
RUN apt-get update \
    && apt-get install -y openssh-server \
    && mkdir /var/run/sshd

# Set root password (change "password" to your desired password)
RUN echo 'root:Kundana945#' | chpasswd

# Permit root login via SSH
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Expose SSH port
EXPOSE 22

# Start SSH service
CMD ["/usr/sbin/sshd", "-D"]

