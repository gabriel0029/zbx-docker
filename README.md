# Docker Zabbix 
Projeto Docker compose Zabbix 5.0.14 + TimescaleDB 12 + Nginx + Grafana 7.0.10

# Instalação do Docker e Docker Compose, caso não tenha.
Dê permissão chmod +x ao script "inicio.sh" e execute em seguida para instalar o Docker e Docker Compose.

# Executando o compose.
Entre no diretorio que foi feito o download. 

#docker-compose up -d

# Listando os containers
#docker container ls ou #docker-compose ps

# Acessando o container
#docker container exec -ti [Container Name ou Container ID] sh

# Visializando os logs
#docker container logs [Container Name ou Container ID]

# Ajustando a Coleta do zabbix server
Edite o host "Zabbix server" na interface de monitoramento informe o nome do container do agent e modifique de "IP" para "DNS" em "Connect to"

![image](https://user-images.githubusercontent.com/87427032/127325078-5d641c9c-c63f-4f43-b78a-a3b1fcdc06a4.png)

# Configuração Grafana

Habilite o plugin.

![Captura de tela de 2021-07-14 15-29-57](https://user-images.githubusercontent.com/87427032/125678219-6f164b99-4648-4b89-9aa4-eba6ed06dcd5.png)

Vá em Data soucers e selecione o plugin do zabbix.

![Captura de tela de 2021-07-14 15-30-17](https://user-images.githubusercontent.com/87427032/125678221-332417f7-6aa9-43f0-8168-2ae008208f2b.png)

Crie o banco de dados. 
No campo "URL" coloque: 

http://nome-ou-ip-container/api_jsonrpc.php

Adicione o usuário e senha do zabbix web.

![conf_grfana](https://user-images.githubusercontent.com/87427032/125678387-480a711e-0a6b-4870-a298-97cea6fbbbe2.png)
