FROM python:3.9

# create and activate virtual environment
RUN python3 -m venv /opt/venv

ENV PATH="/opt/venv/bin:$PATH"

# Update and install dependencies
RUN apt-get update && apt-get install -y software-properties-common && \
    echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | tee /etc/apt/sources.list.d/ansible.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && \
    apt-get update && apt-get install -y nano curl ansible

RUN pip install --upgrade pip
RUN pip3 install -r /usr/lib/python3/dist-packages/ansible_collections/azure/azcollection/requirements-azure.txt 

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Create inventory file
RUN echo "all:\n  hosts:\n    localhost:\n      ansible_connection: local\n      ansible_python_interpreter: /opt/venv/bin/python" > inventory.yml
