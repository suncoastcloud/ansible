# Update all packages that have available updates.
sudo apt update -y

# Upgrade all installed packages.
sudo apt upgrade -y

# Install Python 3, pip and venv.
sudo apt install -y python3-pip python3-venv

# Create a new virtual environment in the directory "ansible-env".
python3 -m venv ansible-env

# Activate the virtual environment.
source ansible-env/bin/activate

# Upgrade pip3.
pip3 install --upgrade pip

# Install Ansible.
pip3 install ansible

# Install Ansible az collection for interacting with Azure.
# ansible-galaxy collection install azure.azcollection
pip install azure-common azure-mgmt-compute azure-mgmt-network azure-mgmt-resource azure-mgmt-storage azure-mgmt-web azure-mgmt-containerinstance azure-mgmt-loganalytics azure-mgmt-marketplaceordering azure-mgmt-sql azure-keyvault-secrets msrestazure azure-cli azure-storage-blob azure-mgmt-automation azure-mgmt-recoveryservicesbackup azure-mgmt-dns azure-mgmt-trafficmanager azure-mgmt-cosmosdb azure-mgmt-redis azure-mgmt-cognitiveservices azure-mgmt-containerregistry azure-mgmt-eventhub azure-mgmt-iothub azure-mgmt-servicebus azure-mgmt-eventgrid azure-mgmt-hdinsight azure-mgmt-authorization azure-mgmt-logic azure-mgmt-notificationhubs azure-mgmt-apimanagement azure-mgmt-authorization azure-mgmt-cdn azure-mgmt-containerservice azure-mgmt-cosmosdb azure-mgmt-devtestlabs azure-mgmt-dns

# Install Ansible modules for Azure
sudo pip3 install -r /home/adminuser/ansible-env/lib/python3.10/site-packages/ansible_collections/azure/azcollection/requirements-azure.txt
