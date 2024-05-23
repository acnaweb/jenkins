# Jenkins

## Install

### Vagrant

```sh
vagrant up
```
### Docker

## Run

- http://localhost:9001/

```sh
sudo systemctl status jenkins
sudo systemctl start jenkins
```

## Uninstall

- https://webhostinggeeks.com/howto/how-to-uninstall-jenkins-on-ubuntu/

```sh
sudo systemctl stop jenkins
sudo apt-get purge jenkins
sudo rm /etc/apt/sources.list.d/jenkins.list
sudo rm -rf /var/lib/jenkins/
sudo rm -rf /var/cache/jenkins
sudo apt-get update
sudo usermod -aG docker jenkins
```

## References

- https://www.jenkins.io/
- https://www.digitalocean.com/community/tutorials/how-to-use-systemctl-to-manage-systemd-services-and-units
- https://medium.com/@lilnya79/integrating-sonarqube-with-jenkins-fe20e454ccf4 
- https://callmezydd.medium.com/unlocking-code-quality-integrating-jenkins-pipeline-with-sonarqube-and-github-7f450f1c90ab
