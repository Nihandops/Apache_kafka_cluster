# Apache Kafka Cluster Deployment with Docker & Zookeeper

This project demonstrates how to deploy a distributed Kafka cluster with Zookeeper using Docker Compose. The setup features three servers, with each server running a part of the Kafka cluster. The architecture is designed for scalability and reliability, making it a robust solution for real-time data streaming and processing[1].

## Project Structure

Here’s the typical folder structure for the project:

```
kafka-cluster/
├── docker-compose.yaml            # Main Docker Compose file
├── scripts/                       # Scripts to manage the system
│   └── start-cluster.sh           # Script to start the cluster
└── data/                          # Data storage directory
    ├── zookeeper-1/               # Zookeeper data directory
    │   ├── data/                  # Zookeeper data files
    │   └── logs/                  # Zookeeper log files
    └── kafka-1/                   # Kafka data directory
        └── data/                  # Kafka data files
```

## Prerequisites

Before starting, ensure you have the following on **each** server:
- Docker
- Docker Compose
- A minimum of **three machines (servers)**

## Setup and Installation

### Step 1: Create Necessary Directories

On each server, execute these commands to establish the directory structure:

```bash
mkdir -p ~/kafka-cluster/data/zookeeper-1/data
mkdir -p ~/kafka-cluster/data/zookeeper-1/logs
mkdir -p ~/kafka-cluster/data/kafka-1/data
echo "1" > ~/kafka-cluster/data/zookeeper-1/data/myid
sudo chown -R 1000:1000 ~/kafka-cluster/data/
sudo chmod -R 755 ~/kafka-cluster/data/
```

> The `"1"` in `myid` should correspond to the Zookeeper node’s ID (e.g., change to `"2"` or `"3"` for the other nodes).

### Step 2: Docker Compose File

The `docker-compose.yaml` file is used to deploy the Zookeeper and Kafka services across three servers. You should make sure to use the correct IP addresses for your servers. (For security, actual IPs are abstracted here.)

### Step 3: Bash Script to Start the Cluster

A startup script (`start-cluster.sh`) is included in the `scripts/` directory to automate the process of bringing up the cluster.

1. Make sure the script is executable:
    ```bash
    chmod +x scripts/start-cluster.sh
    ```

2. Run the script to launch the cluster:
    ```bash
    ./scripts/start-cluster.sh
    ```

## Conclusion

This project sets up a distributed Kafka cluster using Zookeeper and Docker, offering a scalable and reliable architecture for real-time data streaming. Docker Compose makes the deployment process straightforward, and the included Bash script automates cluster startup.

Feel free to fork this repo and tailor it to your needs!
