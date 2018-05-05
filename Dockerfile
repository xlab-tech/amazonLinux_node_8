FROM amazonlinux:latest

# Install C and wget
RUN yum install -y gcc-c++ make

RUN yum install python-pip -y
# Install node
RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -
RUN yum install nodejs -y

CMD ["/bin/bash"]