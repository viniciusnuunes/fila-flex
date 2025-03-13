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
| [DEV] Air      | 1.61.7   |

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

### Para os Desenvolvedores

rodar o make docker-run para subir as dependencias (db, cache) em containers, logo após rodar o make watch para subir a aplicação em live reload

- `make run` Roda a aplicação via terminal
- `make build` Faz o build da aplicação
- `make docker-run` Sobe os containers via Docker Compose
- `make docker-down` Para os containers
- `make watch` Roda em Live Reload para poder usar em localhost

### Comandos úteis do Golang

- `go mod init` Inicializa um novo projeto Go Modules
- `go get` Adiciona, atualiza ou remove uma dependência
- `go mod tidy` Remove dependências não utilizadas
- `go mod graph` Exibe a árvore de dependências
- `go mod verify` Verifica a árvore de dependências em busca de problemas

### Referências Golang

[09/03/2025] [A Pragmatic and Systematic Project Structure in Go](https://medium.com/insiderengineering/a-pragmatic-and-systematic-project-structure-in-go-4a47b4fbe929)

[09/03/2025] [Layout padrão de projetos em Go
](https://github.com/golang-standards/project-layout/blob/master/README_ptBR.md)

[09/03/2025] [Go - The Ultimate Folder Structure](https://gist.github.com/ayoubzulfiqar/9f1a34049332711fddd4d4b2bfd46096)

[09/03/2025] [O que é e como utilizar o package context](https://aprendagolang.com.br/o-que-e-e-como-utilizar-o-package-context/)

### Dicas Docker

#### Quando devo usar a imagem scratch?

**Aplicações Statically Linked:** Se sua aplicação não depende de bibliotecas dinâmicas e pode ser compilada de forma estática, Scratch é uma excelente escolha.

**Segurança:** Quando a segurança é uma prioridade e você quer minimizar a quantidade de software no contêiner.

**Eficiência:** Para criar imagens Docker extremamente pequenas e eficientes.