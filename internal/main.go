package main

import (
	"jwt-authentication-golang/controllers"
	"jwt-authentication-golang/database"
	"jwt-authentication-golang/middlewares"

	"github.com/gin-gonic/gin"
)

// const (
// 	username = "root"
// 	password = ""
// 	hostname = "localhost:3306"
// 	dbname   = "jwt_demo"
// )

//	func dsn(dbName string) string {
//		return fmt.Sprintf("%s:%s@tcp(%s)/%s", username, password, hostname, dbName)
//	}
func main() {
	// var da string
	// da = "root:root@tcp(localhost:3306)/jwt_demo?parseTime=true"
	// fmt.Println(da)
	// database.Connect(dsn(""))

	database.Connect("root:@tcp(localhost:3306)/jwt_demo?parseTime=true")
	database.Migrate()
	// Initialize Router
	router := initRouter()
	router.Run(":8181")

}

func initRouter() *gin.Engine {
	router := gin.Default()
	api := router.Group("/api")
	{
		api.POST("/token", controllers.GenerateToken)
		api.POST("/user/register", controllers.RegisterUser)
		secured := api.Group("/secured").Use(middlewares.Auth())
		{
			secured.GET("/ping", controllers.Ping)
		}
	}
	return router
}
