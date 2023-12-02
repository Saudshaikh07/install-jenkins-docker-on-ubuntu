sudo apt-get update
sudo apt-get install -y ansible
git clone https://github.com/Saudshaikh07/setup-jenkins-ubuntu20.git
sudo ansible-playbook setup-jenkins-ubuntu20/setup-jenkins.yaml
sudo ansible-playbook setup-jenkins-ubuntu20/setup-docker.yaml
