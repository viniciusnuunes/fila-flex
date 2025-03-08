# Projeto FilaFlex

Projeto para gerenciamento de senhas para filas

### Tecnologias utilizadas

- Go
- Gin
- Gorm
- Postgres
- Docker
- Docker Compose
- Redis

### Rodando o Projeto

É necessário ter instalado as seguintes ferramentas

| Tool           | Version  |
| -------------- | -------- |
| Docker         | 20.10.21 |
| Docker Compose | 2.13.0   |
| Golang         | 1.21     |

Para instalar as depencências, fazer build do docker e iniciar o projeto, basta o único comando abaixo
```sh
docker compose up --build
```

Caso já esteja com o build completo, utilizar o comando
```sh
docker compose up
```

O projeto estará rodando em

```sh
localhost:8080
```

### Comandos úteis do Golang

- `go mod init` Inicializa um novo projeto Go Modules
- `go get` Adiciona, atualiza ou remove uma dependência
- `go mod tidy` Remove dependências não utilizadas
- `go mod graph` Exibe a árvore de dependências
- `go mod verify` Verifica a árvore de dependências em busca de problemas

### Dicas Docker

#### Quando devo usar a imagem scratch?

**Aplicações Statically Linked:** Se sua aplicação não depende de bibliotecas dinâmicas e pode ser compilada de forma estática, Scratch é uma excelente escolha.

**Segurança:** Quando a segurança é uma prioridade e você quer minimizar a quantidade de software no contêiner.

**Eficiência:** Para criar imagens Docker extremamente pequenas e eficientes.