package controllers

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func Ping(context *gin.Context) {
	context.Header("Access-Control-Allow-Origin", "*")
	context.JSON(http.StatusOK, gin.H{"message": "pong"})
}
