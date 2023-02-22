package front

import (
	"backend/models"
	pdFront "backend/proto/frontlogin"
	"context"


	"github.com/gin-gonic/gin"
)

type LoginController struct{}

func (con LoginController) Login(c *gin.Context) {
	phone := c.PostForm("phone")
	password := c.PostForm("password")
	

	frontloginClient :=pdFront.NewFrontloginService("frontlogin",models.FrontloginClient)
	res,_:=frontloginClient.Frontlogin(context.Background(),&pdFront.FrontloginRequest{
		Phone: phone,
		Password: password,
	})

	
	if !(res.Success) {
		c.JSON(200, gin.H{
			"error": "用户不存在或密码错误",
		})
	}else {
		c.JSON(200, gin.H{
			"success":"登录成功",
			"phone":phone,
		})
	}
	

}