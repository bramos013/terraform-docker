# Infraestrutura como Código (IAC) com Docker, Terraform e Nginx

Bem-vindo a este repositório de exemplo, onde exploramos a implementação de uma infraestrutura local segura usando Docker, Terraform e Nginx. Esta configuração permite a execução de um ambiente completo e isolado para validar a integração de um aplicativo web com uma API de backend e um banco de dados PostgreSQL. 

## Resumo

Este projeto tem como objetivo demonstrar como criar e configurar um ambiente seguro, local e isolado para testar a integração de aplicativos e serviços. O ambiente é provisionado com a ajuda do Terraform e usa contêineres Docker para isolar as partes do aplicativo.

## Requisitos

Antes de começar, certifique-se de que seu ambiente atenda aos seguintes requisitos:

- Docker: [Instalação do Docker](https://www.docker.com/get-started/)
- Terraform: [Instalação do Terraform](https://www.terraform.io/)
- Git: [Instalação do Git](https://git-scm.com/)

### Verificação de Requisitos

Você pode verificar se seu ambiente atende a esses requisitos usando o seguinte comando:

```bash
./validate_requirements.sh
```
Este script verifica se as ferramentas necessárias estão instaladas e prontas para uso.

### Provisão de Infraestrutura
Para configurar e implantar a infraestrutura, siga estas etapas:

#### Inicialize o Terraform:
```bash
terraform init
```
Para configurar e implantar a infraestrutura, siga estas etapas:

#### Planeje a Infraestrutura:
```bash
terraform plan
```
Isso fornecerá uma visão geral das mudanças que serão feitas na infraestrutura.

#### Aplique a Configuração:
```bash
terraform apply
```

Isso implementará a infraestrutura configurada. Confirme a ação quando solicitado.

### Derrubando a Infraestrutura

Se, a qualquer momento, você precisar remover a infraestrutura criada, você pode usar o seguinte comando:
```bash
terraform destroy
```
Isso encerrará os recursos provisionados. Tenha cuidado, pois isso irá apagar todos os recursos criados neste ambiente.

Este repositório é destinado a fins educacionais e de demonstração. Sinta-se à vontade para explorar e aprender com ele. 
Se tiver alguma dúvida ou quiser saber mais sobre como essa infraestrutura foi criada, fique à vontade para entrar em contato.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-sr1bramos-blue)](https://www.linkedin.com/in/sr1bramos/) [![E-mail](https://img.shields.io/badge/Email-brunoramos013@gmail.com-blue)](mailto:brunoramos013@gmail.com)


Aproveite o aprendizado e a exploração!
