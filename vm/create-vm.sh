az group create \
-n ansible-rg \
-l southcentralus

echo "Resource Group Created. Creating VM...."

# Save the public IP address to a variable
pubip=$(az vm create \
-n ansible-vm \
-g ansible-rg \
--image Ubuntu2204  \
--admin-username adminuser \
--admin-password <pwd> \
--query publicIpAddress -o tsv)

echo "VM Created. Public IP: $pubip"

# Copy the configure-ansible.sh script to the VM
scp configure-ansible.sh adminuser@$pubip:~

# Stay logged in after the script runs
ssh adminuser@$pubip

