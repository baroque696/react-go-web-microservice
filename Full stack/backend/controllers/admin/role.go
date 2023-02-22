package admin

import (
	"backend/models"
	"fmt"
	"net/http"
	"strings"

	"github.com/gin-gonic/gin"
)

type RoleController struct {
	BaseController
}

func (con RoleController) Index(c *gin.Context) {
	roleList := []models.Role{}
	models.DB.Find(&roleList)
	fmt.Println(roleList)
	c.HTML(http.StatusOK, "admin/role/index.html", gin.H{
		"roleList": roleList,
	})

}
func (con RoleController) Add(c *gin.Context) {
	c.HTML(http.StatusOK, "admin/role/add.html", gin.H{})
}
func (con RoleController) DoAdd(c *gin.Context) {

	title := strings.Trim(c.PostForm("title"), " ")
	description := strings.Trim(c.PostForm("description"), " ")

	if title == "" {
		con.Error(c, "角色的标题不能为空", "/admin/role/add")
		return
	}
	role := models.Role{}
	role.Title = title
	role.Description = description
	role.Status = 1
	role.AddTime = int(models.GetUnix())

	err := models.DB.Create(&role).Error
	if err != nil {
		con.Error(c, "增加角色失败 请重试", "/admin/role/add")
	} else {
		con.Success(c, "增加角色成功", "/admin/role")
	}

}
func (con RoleController) Edit(c *gin.Context) {

	id, err := models.Int(c.Query("id"))
	if err != nil {
		con.Error(c, "传入数据错误", "/admin/role")
	} else {
		role := models.Role{Id: id}
		models.DB.Find(&role)
		c.HTML(http.StatusOK, "admin/role/edit.html", gin.H{
			"role": role,
		})
	}

}
func (con RoleController) DoEdit(c *gin.Context) {

	id, err1 := models.Int(c.PostForm("id"))
	if err1 != nil {
		con.Error(c, "传入数据错误", "/admin/role")
		return
	}
	title := strings.Trim(c.PostForm("title"), " ")
	description := strings.Trim(c.PostForm("description"), " ")

	if title == "" {
		con.Error(c, "角色的标题不能为空", "/admin/role/edit")
	}

	role := models.Role{Id: id}
	models.DB.Find(&role)
	role.Title = title
	role.Description = description

	err2 := models.DB.Save(&role).Error
	if err2 != nil {
		con.Error(c, "修改数据失败", "/admin/role/edit?id="+models.String(id))
	} else {
		con.Success(c, "修改数据成功", "/admin/role/edit?id="+models.String(id))
	}

	//查询要修改的数据 然后 修改

	// c.String(http.StatusOK, "-执行修改")
}
func (con RoleController) Delete(c *gin.Context) {
	id, err := models.Int(c.Query("id"))
	if err != nil {
		con.Error(c, "传入数据错误", "/admin/role")
	} else {
		role := models.Role{Id: id}
		models.DB.Delete(&role)
		con.Success(c, "删除数据成功", "/admin/role")
	}
}

func (con RoleController) Auth(c *gin.Context) {
	//1、获取角色id
	roleId, err := models.Int(c.Query("id"))
	if err != nil {
		con.Error(c, "传入数据错误", "/admin/role")
		return
	}
	//2、获取所有的权限
	accessList := []models.Access{}
	models.DB.Where("module_id=?", 0).Preload("AccessItem").Find(&accessList)

	//3、获取当前角色拥有的权限 ，并把权限id放在一个map对象里面
	roleAccess := []models.RoleAccess{}
	models.DB.Where("role_id=?", roleId).Find(&roleAccess)
	roleAccessMap := make(map[int]int)
	for _, v := range roleAccess {
		roleAccessMap[v.AccessId] = v.AccessId
	}

	//4、循环遍历所有的权限数据，判断当前权限的id是否在角色权限的Map对象中,如果是的话给当前数据加入checked属性

	for i := 0; i < len(accessList); i++ {
		if _, ok := roleAccessMap[accessList[i].Id]; ok {
			accessList[i].Checked = true
		}
		for j := 0; j < len(accessList[i].AccessItem); j++ {
			if _, ok := roleAccessMap[accessList[i].AccessItem[j].Id]; ok {
				accessList[i].AccessItem[j].Checked = true
			}
		}
	}

	c.HTML(http.StatusOK, "admin/role/auth.html", gin.H{
		"roleId":     roleId,
		"accessList": accessList,
	})

}

func (con RoleController) DoAuth(c *gin.Context) {
	//获取角色id
	roleId, err1 := models.Int(c.PostForm("role_id"))
	if err1 != nil {
		con.Error(c, "传入数据错误", "/admin/role")
		return
	}
	//获取权限id  切片
	accessIds := c.PostFormArray("access_node[]")

	//删除当前角色对应的权限
	roleAccess := models.RoleAccess{}
	models.DB.Where("role_id=?", roleId).Delete(&roleAccess)

	//增加当前角色对应的权限
	for _, v := range accessIds {
		roleAccess.RoleId = roleId
		accessId, _ := models.Int(v)
		roleAccess.AccessId = accessId
		models.DB.Create(&roleAccess)
	}
	fmt.Println(roleId)
	fmt.Println(accessIds)

	fmt.Println("/admin/role/auth?id=?" + models.String(roleId))
	// c.String(200, "DoAuth")
	// admin/role/auth?id=9
	con.Success(c, "授权成功", "/admin/role/auth?id="+models.String(roleId))
}
