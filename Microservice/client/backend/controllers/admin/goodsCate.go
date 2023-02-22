package admin

import (
	"backend/models"
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"
)

type GoodsCateController struct {
	BaseController
}

func (con GoodsCateController) Index(c *gin.Context) {
	goodsCateList := []models.GoodsCate{}
	models.DB.Where("pid = 0").Preload("GoodsCateItems").Find(&goodsCateList)
	fmt.Printf("%#v", goodsCateList)
	c.HTML(http.StatusOK, "admin/goodsCate/index.html", gin.H{
		"goodsCateList": goodsCateList,
	})
}
func (con GoodsCateController) Add(c *gin.Context) {
	//获取顶级分类
	goodsCateList := []models.GoodsCate{}
	models.DB.Where("pid = 0").Find(&goodsCateList)
	c.HTML(http.StatusOK, "admin/goodsCate/add.html", gin.H{
		"goodsCateList": goodsCateList,
	})
}
func (con GoodsCateController) DoAdd(c *gin.Context) {
	title := c.PostForm("title")
	pid, err1 := models.Int(c.PostForm("pid"))
	link := c.PostForm("link")
	template := c.PostForm("template")
	subTitle := c.PostForm("sub_title")
	keywords := c.PostForm("keywords")
	description := c.PostForm("description")
	sort, err2 := models.Int(c.PostForm("sort"))
	status, err3 := models.Int(c.PostForm("status"))

	if err1 != nil || err3 != nil {
		con.Error(c, "传入参数类型不正确", "/goodsCate/add")
		return
	}
	if err2 != nil {
		con.Error(c, "排序值必须是整数", "/goodsCate/add")
		return
	}
	cateImgDir, _ := models.UploadImg(c, "cate_img")
	goodsCate := models.GoodsCate{
		Title:       title,
		Pid:         pid,
		SubTitle:    subTitle,
		Link:        link,
		Template:    template,
		Keywords:    keywords,
		Description: description,
		CateImg:     cateImgDir,
		Sort:        sort,
		Status:      status,
		AddTime:     int(models.GetUnix()),
	}
	err := models.DB.Create(&goodsCate).Error
	if err != nil {
		con.Error(c, "增加数据失败", "/admin/goodsCate/add")
		return
	}
	con.Success(c, "增加数据成功", "/admin/goodsCate")
}

func (con GoodsCateController) Edit(c *gin.Context) {

	//获取要修改的数据
	id, err := models.Int(c.Query("id"))
	if err != nil {
		con.Error(c, "传入参数错误", "/admin/goodsCate")
		return
	}
	goodsCate := models.GoodsCate{Id: id}
	models.DB.Find(&goodsCate)

	//获取顶级分类
	goodsCateList := []models.GoodsCate{}
	models.DB.Where("pid = 0").Find(&goodsCateList)
	c.HTML(http.StatusOK, "admin/goodsCate/edit.html", gin.H{
		"goodsCate":     goodsCate,
		"goodsCateList": goodsCateList,
	})

}
func (con GoodsCateController) DoEdit(c *gin.Context) {
	id, err1 := models.Int(c.PostForm("id"))
	title := c.PostForm("title")
	pid, err2 := models.Int(c.PostForm("pid"))
	link := c.PostForm("link")
	template := c.PostForm("template")
	subTitle := c.PostForm("sub_title")
	keywords := c.PostForm("keywords")
	description := c.PostForm("description")
	sort, err3 := models.Int(c.PostForm("sort"))
	status, err4 := models.Int(c.PostForm("status"))

	if err1 != nil || err2 != nil || err4 != nil {
		con.Error(c, "传入参数类型不正确", "/goodsCate/add")
		return
	}
	if err3 != nil {
		con.Error(c, "排序值必须是整数", "/goodsCate/add")
		return
	}
	cateImgDir, _ := models.UploadImg(c, "cate_img")

	goodsCate := models.GoodsCate{Id: id}
	models.DB.Find(&goodsCate)
	goodsCate.Title = title
	goodsCate.Pid = pid
	goodsCate.Link = link
	goodsCate.Template = template
	goodsCate.SubTitle = subTitle
	goodsCate.Keywords = keywords
	goodsCate.Description = description
	goodsCate.Sort = sort
	goodsCate.Status = status
	if cateImgDir != "" {
		goodsCate.CateImg = cateImgDir
	}
	err := models.DB.Save(&goodsCate).Error
	if err != nil {
		con.Error(c, "修改失败", "/admin/goodsCate/edit?id="+models.String(id))
		return
	}
	con.Success(c, "修改成功", "/admin/goodsCate")

}
func (con GoodsCateController) Delete(c *gin.Context) {
	id, err := models.Int(c.Query("id"))
	if err != nil {
		con.Error(c, "传入数据错误", "/admin/goodsCate")
	} else {
		//获取我们要删除的数据
		goodsCate := models.GoodsCate{Id: id}
		models.DB.Find(&goodsCate)
		if goodsCate.Pid == 0 { //顶级分类
			goodsCateList := []models.GoodsCate{}
			models.DB.Where("pid = ?", goodsCate.Id).Find(&goodsCateList)
			if len(goodsCateList) > 0 {
				con.Error(c, "当前分类下面子分类，请删除子分类作以后再来删除这个数据", "/admin/goodsCate")
			} else {
				models.DB.Delete(&goodsCate)
				con.Success(c, "删除数据成功", "/admin/goodsCate")
			}
		} else { //操作 或者菜单
			models.DB.Delete(&goodsCate)
			con.Success(c, "删除数据成功", "/admin/goodsCate")
		}

	}
}
