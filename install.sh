curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y   #This will install jenkins in our machine.
sudo apt-get install docker.io    #This will install docker in our machine
sudo usermod -aG docker $USER     #This will provide docker privilege to running user by adding user into docker group.
sudo usermod -aG docker jenkins   #This will provide docker privilege to jenkins by adding user into docker group.
sudo reboot                       #Reboot our machine.

 #After all steps are executed, reconnect your instance.
