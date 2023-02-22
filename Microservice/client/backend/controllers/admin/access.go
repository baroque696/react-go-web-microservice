package admin

import (
	"backend/models"
	"fmt"
	"net/http"
	"strings"

	"github.com/gin-gonic/gin"
)

type AccessController struct {
	BaseController
}

func (con AccessController) Index(c *gin.Context) {
	accessList := []models.Access{}
	models.DB.Where("module_id=?", 0).Preload("AccessItem").Find(&accessList)

	fmt.Printf("%#v", accessList)
	c.HTML(http.StatusOK, "admin/access/index.html", gin.H{
		"accessList": accessList,
	})

}
func (con AccessController) Add(c *gin.Context) {
	//获取顶级模块
	accessList := []models.Access{}
	models.DB.Where("module_id=?", 0).Find(&accessList)
	c.HTML(http.StatusOK, "admin/access/add.html", gin.H{
		"accessList": accessList,
	})
}
func (con AccessController) DoAdd(c *gin.Context) {
	moduleName := strings.Trim(c.PostForm("module_name"), " ")
	actionName := c.PostForm("action_name")
	accessType, err1 := models.Int(c.PostForm("type"))
	url := c.PostForm("url")
	moduleId, err2 := models.Int(c.PostForm("module_id"))
	sort, err3 := models.Int(c.PostForm("sort"))
	status, err4 := models.Int(c.PostForm("status"))
	description := c.PostForm("description")
	if err1 != nil || err2 != nil || err3 != nil || err4 != nil {
		con.Error(c, "传入参数错误", "/admin/access/add")
		return
	}
	if moduleName == "" {
		con.Error(c, "模块名称不能为空", "/admin/access/add")
		return
	}

	access := models.Access{
		ModuleName:  moduleName,
		Type:        accessType,
		ActionName:  actionName,
		Url:         url,
		ModuleId:    moduleId,
		Sort:        sort,
		Description: description,
		Status:      status,
	}
	err5 := models.DB.Create(&access).Error
	if err5 != nil {
		con.Error(c, "增加数据失败", "/admin/access/add")
		return
	}
	con.Success(c, "增加数据成功", "/admin/access")

}

func (con AccessController) Edit(c *gin.Context) {
	//获取要修改的数据
	id, err1 := models.Int(c.Query("id"))
	if err1 != nil {
		con.Error(c, "参数错误", "/admin/access")
	}
	access := models.Access{Id: id}
	models.DB.Find(&access)

	//获取顶级模块
	accessList := []models.Access{}
	models.DB.Where("module_id=?", 0).Find(&accessList)

	c.HTML(http.StatusOK, "admin/access/edit.html", gin.H{
		"access":     access,
		"accessList": accessList,
	})
}

func (con AccessController) DoEdit(c *gin.Context) {
	id, err1 := models.Int(c.PostForm("id"))
	moduleName := strings.Trim(c.PostForm("module_name"), " ")
	actionName := c.PostForm("action_name")
	accessType, err2 := models.Int(c.PostForm("type"))
	url := c.PostForm("url")
	moduleId, err3 := models.Int(c.PostForm("module_id"))
	sort, err4 := models.Int(c.PostForm("sort"))
	status, err5 := models.Int(c.PostForm("status"))
	description := c.PostForm("description")
	if err1 != nil || err2 != nil || err3 != nil || err4 != nil || err5 != nil {
		con.Error(c, "传入参数错误", "/admin/access")
		return
	}
	if moduleName == "" {
		con.Error(c, "模块名称不能为空", "/admin/access/edit?id="+models.String(id))
		return
	}

	access := models.Access{Id: id}
	models.DB.Find(&access)
	access.ModuleName = moduleName
	access.Type = accessType
	access.ActionName = actionName
	access.Url = url
	access.ModuleId = moduleId
	access.Sort = sort
	access.Description = description
	access.Status = status

	err := models.DB.Save(&access).Error
	if err != nil {
		con.Error(c, "修改数据", "/admin/access/edit?id="+models.String(id))
	} else {
		con.Success(c, "修改数据成功", "/admin/access/edit?id="+models.String(id))
	}

}

func (con AccessController) Delete(c *gin.Context) {
	id, err := models.Int(c.Query("id"))
	if err != nil {
		con.Error(c, "传入数据错误", "/admin/access")
	} else {
		//获取我们要删除的数据
		access := models.Access{Id: id}
		models.DB.Find(&access)
		if access.ModuleId == 0 { //顶级模块
			accessList := []models.Access{}
			models.DB.Where("module_id = ?", access.Id).Find(&accessList)
			if len(accessList) > 0 {
				con.Error(c, "当前模块下面有菜单或者操作，请删除菜单或者操作以后再来删除这个数据", "/admin/access")
			} else {
				models.DB.Delete(&access)
				con.Success(c, "删除数据成功", "/admin/access")
			}
		} else { //操作 或者菜单
			models.DB.Delete(&access)
			con.Success(c, "删除数据成功", "/admin/access")
		}

	}
}
