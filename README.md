kafka Cluster Deployment with Docker & Zookeeper
This project demonstrates how to deploy a distributed Kafka cluster with Zookeeper using Docker Compose. The setup includes three servers, where each server is configured to run a part of the Kafka cluster. The architecture ensures scalability and reliability, making it a robust solution for real-time data streaming and processing.

Project Structure
The project folder structure is organized as follows:

kafka-cluster/
├── docker-compose.yaml      # Main Docker Compose file
├── scripts/                 # Scripts to manage the system
│   └── start-cluster.sh     # Script to start the cluster
└── data/                    # Data storage directory
    ├── zookeeper-1/         # Zookeeper data directory
    │   ├── data/            # Zookeeper data files
    │   └── logs/            # Zookeeper log files
    └── kafka-1/             # Kafka data directory
        └── data/            # Kafka data files

Prerequisites
Docker
Docker Compose
A minimum of three machines (servers)

Setup and Installation
Step 1: Create the necessary directories
On each server, run the following commands to set up the directory structure:
mkdir -p ~/kafka-cluster/data/zookeeper-1/data
mkdir -p ~/kafka-cluster/data/zookeeper-1/logs
mkdir -p ~/kafka-cluster/data/kafka-1/data
echo "1" > data/zookeeper-1/data/myid
sudo chown -R 1000:1000 data/
sudo chmod -R 755 data/

Step 2: Docker Compose File
The following docker-compose.yaml file deploys Zookeeper and Kafka services across three servers. The IP addresses have been abstracted for security purposes.

Step 3: Bash Script to Start the Cluster

Conclusion
In this project, I’ve set up a distributed Kafka cluster using Zookeeper and Docker, ensuring a scalable and reliable data streaming architecture. The use of Docker Compose simplifies the deployment, while the Bash script automates the startup process.

Feel free to fork this repo and customize it according to your needs!
