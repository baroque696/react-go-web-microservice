package front

import (
	"backend/models"
	"fmt"

	"github.com/gin-gonic/gin"
)

type LoginController struct{}

func (con LoginController) Login(c *gin.Context) {
	phone := c.PostForm("phone")
	password := c.PostForm("password")
	userinfo := models.User{}
	password = models.Md5(password) 
	models.DB.Where("phone = ? AND password = ?",phone, password).Find(&userinfo)
	if !(userinfo.Id > 0) {
		c.JSON(200, gin.H{
			"error": "用户不存在或密码错误",
		})
	}else {
		c.JSON(200, gin.H{
			"success":"登录成功",
			"phone":phone,
		})
	}
	fmt.Println(phone)
	fmt.Println(password)


}