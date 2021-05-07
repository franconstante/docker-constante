# Dockerfile - Jenkins

Este Dockerfile possui uma instalação inicial do Jenkins, o Jenkins é uma ferramenta de CI e CD que é utilizada também para diversas automatizações de execuções de scripts e etc... 

O Dockerfile é baseado no CentOS e possui os seguintes steps:

Instalação Java 1.8
Instalação Maven
Instalação Curl
Instalação wget
Download do repositorio do Jenkins
Instalação o Jenkins

Aplicação roda na porta 8080 (EXPOSE 8080)

Iniciar o container:

`docker run -dit -p 1222:8080 --name jenkins franconstante/jenkins:latest`

Para capturar a senha inical do Jenkins execute o seguinte comando:

`docker exec ${CONTAINER_ID or CONTAINER_NAME} cat /var/lib/jenkins/secrets/initialAdminPassword`

Acessar o container atraves do endereço e porta definida

Ex:
http://localhost:1222/
