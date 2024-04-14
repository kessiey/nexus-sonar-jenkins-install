
# Jenkins, Nexus and SonarQube Installation Script

# INTRODUCTION

# This script automates and streamlines the deployment of Jenkins, Nexus and SonarQube on a single EC2 instance. Its aim is to optimize AWS expenditure by consolidating multiple tools onto a single server, facilitating the practice of constructing CI/CD pipelines primarily through Jenkins.

# SYSTEM REQUIREMENTS AND PRE-REQUISITES
Before running the script, make sure you have the following:

* An AWS account with permissions to create EC2 instances.
* Access to an AWS region where EC2 instances can be created.
* AWS CLI installed and configured with appropriate credentials.
* Basic understanding of AWS EC2, SSH, and Linux commands.

* Instance Type: T2 or T3 Large
* Storage: 30GB root volume
* Operating System: Ubuntu

![image](https://github.com/kessiey/nexus-sonar-jenkins-install/assets/122237149/2b467293-8c50-48c8-a969-1aea348862e5)

# TOOLS TO BE INSTALLED
* Jenkins
* Docker
* Nexus (Docker container)
* SonarQube (Docker container)

# USAGE
1. Clone this repository to your local machine:
   
   `git clone https://github.com/kessiey/nexus-sonar-jenkins-install.git`
     
2. Navigate to the directory containing the script:
   
   `cd your-repo`
     
3. Make the scripts executable:

   `chmod +x sudo bash install-tools.sh && start-containers.sh`

4. Execute the script:
   
   `sudo bash install-tools.sh`
        
7. After installation, ensure that the default ports for the tools are allowed under the inbound rules of your EC2 instance:
* Jenkins: Port 8080
* Nexus: Port 8081
* SonarQube: Port 9000
* SSH: Port 22

![Screenshot 2024-04-14 105149](https://github.com/kessiey/nexus-sonar-jenkins-install/assets/122237149/596fa2d5-ad1a-42f5-9865-a08d25439e3f)

# IMPORTANT NOTE
Whenever the EC2 instance is stopped, the Docker containers running Jenkins, Nexus and SonarQube will also stop.

To automatically start the containers when you start your instance, utilize the provided `start-containers.sh script`. This script starts both containers seamlessly.

To access the shell of a container, execute the command: `docker exec -it <container-name> bash`

Replace <container-name> with the actual name of the container, which you can retrieve by running: `docker ps`

If you encounter permission issues while running Docker commands, ensure that your user account is added to the Docker group:
* Run the command `sudo usermod -aG docker ${USER}`
* Then, switch to the ubuntu user by running `sudo su ubuntu`
* Retry the Docker command after completing these steps.

# ACCESS URLs
After the installation is complete, you can access the following URLs to use the newly installed tools:

* Jenkins: http://your-ec2-instance-ip:8080
* Nexus: http://your-ec2-instance-ip:8081
* SonarQube: http://your-ec2-instance-ip:9000

# LICENSE
This project is licensed under the MIT License - see the [LICENSE.md](https://chat.openai.com/c/LICENSE.md) file for details.
