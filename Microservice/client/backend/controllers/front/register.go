package front

import (
	"backend/models"
	pdRegister "backend/proto/register"
	"context"
	"fmt"

	"github.com/gin-gonic/gin"
)

type RegisterController struct{}




var users = make(map[string]string)

func (con RegisterController) Register(c *gin.Context) {
	phone := c.PostForm("phone")
	password := c.PostForm("password")
	fmt.Println(phone)
	registerClient := pdRegister.NewRegisterService("register",models.RegisterClient)
	res,_ := registerClient.Register(context.Background(),&pdRegister.RegisterRequest{
		Phone: phone,
		Password: password,
	})
	
	
	if res.Success {
		c.JSON(200, gin.H{
			"error": "账号已注册",
		})
		
	}else {
		
		c.JSON(200, gin.H{
			"success": "注册成功",
		})
	}
	
	
	
	}
	
	
	
