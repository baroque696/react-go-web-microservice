package front

import (
	"backend/models"
	"fmt"

	"github.com/gin-gonic/gin"
)

type RegisterController struct{}




var users = make(map[string]string)

func (con RegisterController) Register(c *gin.Context) {
	phone := c.PostForm("phone")
	password := c.PostForm("password")
	fmt.Println(phone)
	phoneList := models.User{}
	models.DB.Raw("SELECT * FROM user WHERE phone = ?", phone).Scan(&phoneList)
	fmt.Println(phoneList)
	
	if phoneList.Id > 0 {
		c.JSON(200, gin.H{
			"error": "账号已注册",
		})
		return
	}else {
		phoneList.Phone = phone
		phoneList.Password = models.Md5(password)
		phoneList.AddTime= int(models.GetUnix())
		models.DB.Save(&phoneList)
		c.JSON(200, gin.H{
			"success": "注册成功",
		})
	}
	
	
	
	}
	
	
	
