package admin

import (
	"backend/models"
	pdRbac "backend/proto/rbac"
	"context"
	"encoding/json"
	"fmt"
	"net/http"

	"github.com/gin-contrib/sessions"
	"github.com/gin-gonic/gin"
)

type LoginController struct {
	BaseController
}

func (con LoginController) Index(c *gin.Context) {
	//验证md5是否正确
	// fmt.Println(models.Md5("123456"))   e10adc3949ba59abbe56e057f20f883e

	c.HTML(http.StatusOK, "admin/login/login.html", gin.H{})

}
func (con LoginController) DoLogin(c *gin.Context) {

	captchaId := c.PostForm("captchaId")
	username := c.PostForm("username")
	password := c.PostForm("password")
	verifyValue := c.PostForm("verifyValue")
	fmt.Println(username, password)
	//1、验证验证码是否正确
	if flag := models.VerifyCaptcha(captchaId, verifyValue); flag {
		//2、调用rbac的微服务 查询数据库 判断用户以及密码是否存在
		rbacClient :=pdRbac.NewRbacService("rbac",models.RbacClient)
		res,_ :=rbacClient.Login(context.Background(),&pdRbac.LoginRequest{
			Username: username,
			Password: models.Md5(password),
		})

		if res.IsLogin  {
			//3、执行登录 保存用户信息 执行跳转
			session := sessions.Default(c)
			//注意：session.Set没法直接保存结构体对应的切片 把结构体转换成json字符串
			userinfoSlice, _ := json.Marshal(res.Userlist)
			session.Set("userinfo", string(userinfoSlice))
			session.Save()
			con.Success(c, "登录成功", "/admin")

		} else {
			con.Error(c, "用户名或者密码错误", "/admin/login")
		}

	} else {
		con.Error(c, "验证码验证失败", "/admin/login")
	}

}

func (con LoginController) Captcha(c *gin.Context) {
	id, b64s, err := models.MakeCaptcha(34, 100, 2)

	if err != nil {
		fmt.Println(err)
	}
	c.JSON(http.StatusOK, gin.H{
		"captchaId":    id,
		"captchaImage": b64s,
	})
}
func (con LoginController) LoginOut(c *gin.Context) {
	session := sessions.Default(c)
	session.Delete("userinfo")
	session.Save()
	con.Success(c, "退出登录成功", "/admin/login")
}
