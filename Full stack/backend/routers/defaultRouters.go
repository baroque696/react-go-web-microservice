package routers

import (
	"backend/controllers/front"

	"github.com/gin-gonic/gin"
)

func DefaultRoutersInit(r *gin.Engine) {
	defaultRouters := r.Group("/")
	{
		defaultRouters.GET("/goods/shouji", front.DefaultController{}.Index)
		defaultRouters.GET("/goods/dianshi", front.DefaultController{}.Dianshi)
		defaultRouters.GET("/goods/jiadian", front.DefaultController{}.Jiadian)
		defaultRouters.GET("/goods/bijiben", front.DefaultController{}.Bijiben)
		defaultRouters.GET("/goods/chuxing", front.DefaultController{}.Chuxing)
		defaultRouters.GET("/goods/erji", front.DefaultController{}.Erji)
		
		defaultRouters.GET("/buy", front.DefaultController{}.Buyshop)

		defaultRouters.POST("/register", front.RegisterController{}.Register)

		defaultRouters.POST("/login",front.LoginController{}.Login)

		
		defaultRouters.POST("/cart",front.CartControllor{}.Cart)
	}
}


