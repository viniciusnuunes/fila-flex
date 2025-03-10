package main

import (
	"github.com/gin-gonic/gin"
)

func main() {
	// Criar um novo roteador Gin
	r := gin.Default()

	// Definir uma rota GET para /hello
	r.GET("/hello", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "Hello, World!",
		})
	})

	// Iniciar o servidor na porta 8080
	r.Run(":8080")
}
