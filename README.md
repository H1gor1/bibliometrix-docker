# Dockerized Bibliometrix

Este repositório contém um Dockerfile para criar uma imagem Docker que executa o `biblioshiny`, uma interface Shiny para análise bibliométrica usando o pacote R `bibliometrix`.

## Pré-requisitos

- [Docker](https://www.docker.com/get-started) instalado em sua máquina.

## Como Usar

Siga as instruções abaixo para construir e rodar a imagem Docker.

### Passo 1: Clonar o Repositório

Primeiro, clone este repositório para sua máquina local.

```bash
git clone https://github.com/seu-usuario/dockerized-bibliometrix.git
cd dockerized-bibliometrix
```
### Passo 2: Construir a Imagem Docker

No diretório clonado, execute o comando abaixo para construir a imagem Docker.
Obs: Este processo pode levar certo tempo.

```bash
docker build -t bibliometrix-docker .
```

### Passo 3: Rodar o Container Docker

Depois de construir a imagem, você pode rodar um container baseado nela.

```bash
docker run -p 3838:3838 bibliometrix-docker
```
### Passo 4: Acessar a Interface Shiny

Abra o seu navegador e acesse a interface Shiny do bibliometrix através do endereço:
```
http://localhost:3838
```

## Personalização

Se você precisar adicionar mais pacotes R ou realizar configurações adicionais, edite o Dockerfile conforme necessário e reconstrua a imagem.

## Problemas Comuns

### Porta já em uso: 
Se a porta 3838 já estiver em uso, você pode mapear para outra porta disponível no seu host. Por exemplo, para usar a porta 4000:
```bash
docker run -p 4000:3838 bibliometrix-docker
```
E então acesse http://localhost:4000 no seu navegador.


