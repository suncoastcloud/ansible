# python3.9 base container with ansible with azure collection installed
FROM python:3.9

# Create a working directory named ansible
WORKDIR /ansible

# create virtal environment and set in path
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Update and install dependencies
RUN apt-get update && \
    apt-get install -y software-properties-common nano curl expect  && \
    echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | tee /etc/apt/sources.list.d/ansible.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip && \
    pip3 install pywinrm 

# Install Ansible and Azure Collection
RUN pip3 install ansible && \
    ansible-galaxy collection install azure.azcollection --force && \
    pip3 install -r ~/.ansible/collections/ansible_collections/azure/azcollection/requirements.txt   

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Set default command
CMD ["/bin/bash"]