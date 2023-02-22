package admin

import (
	"backend/models"
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"
)

type SettingController struct {
	BaseController
}

func (con SettingController) Index(c *gin.Context) {
	setting := models.Setting{}
	models.DB.First(&setting)
	c.HTML(http.StatusOK, "admin/setting/index.html", gin.H{
		"setting": setting,
	})
}

func (con SettingController) DoEdit(c *gin.Context) {
	setting := models.Setting{Id: 1}
	models.DB.Find(&setting)
	if err := c.ShouldBind(&setting); err != nil {
		fmt.Println(err)
		con.Error(c, "修改数据失败,请重试", "/admin/setting")
		return
	} else {
		// 上传图片 logo
		siteLogo, err1 := models.UploadImg(c, "site_logo")
		if len(siteLogo) > 0 && err1 == nil {
			setting.SiteLogo = siteLogo
		}
		//上传图片 no_picture
		noPicture, err2 := models.UploadImg(c, "no_picture")
		if len(noPicture) > 0 && err2 == nil {
			setting.NoPicture = noPicture
		}

		err3 := models.DB.Save(&setting).Error
		if err3 != nil {
			con.Error(c, "修改数据失败", "/admin/setting")
			return
		}

		con.Success(c, "修改数据成功", "/admin/setting")
	}
}
