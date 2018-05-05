FROM amazonlinux:latest

# Update 
RUN yum -y update
# Install C and wget
RUN yum install -y gcc-c++ make

RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"

RUN python get-pip.py
# Install node
RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -
RUN yum install nodejs -y

CMD ["/bin/bash"]