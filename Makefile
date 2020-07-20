up:
	vagrant up

install:
	ansible-playbook -i hosts site.yaml

destroy:
	ssh-keygen -R 172.42.42.100
	ssh-keygen -R 172.42.42.101
	vagrant destroy -f