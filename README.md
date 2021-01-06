# Ansible
Aplicação de conteúdo estudado em curso de Ansible da Alura

Criada máquina host do Ansible para o caso de executar em Windows, que não possui suporte. Basta executar da raiz.

Para provisionar, ligar e acessar qualquer uma das máquinas virtuais, digite os seguintes comandos:
```shell
vagrant up
vagrant ssh
```

Pode demorar um pouco se for o primeiro provisionamento da máquina.

Provisionando inline com o Ansible:
```shell
ansible <host_name> -u <user> --private-key <private_key> -i <hosts_file> -m <module_name> -a <module_args>
```

Exemplo:
```shell
ansible wordpress -u vagrant --private-key ~/wordpress/private_key -i hosts -m shell -a 'echo Hello, Ansible!'
```

Caso enfrente erro de SSH ou chave não encontrada, execute o script *set_ssh.sh* dentro da pasta do projeto Ansible específico, a partir da máquina host do Ansible.

Para executar um playbook (template de configuração), utilize o comando:
```shell
ansible-playbook <playbook_file> -u <user> --private-key <private_key> -i <hosts_file>
```

Exemplo:
```shell
ansible-playbook provisioning.yml -u vagrant --private-key ~/wordpress/private_key -i hosts
```