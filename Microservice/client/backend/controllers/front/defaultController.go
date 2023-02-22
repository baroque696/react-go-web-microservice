package front

import (
	"backend/models"
	pdUser "backend/proto/user"
	"context"
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"
)

type DefaultController struct{}

func (con DefaultController) Index(c *gin.Context) {
	//获取分类数据
	goodCateList :=[]models.Goods{}
	models.DB.Raw("SELECT id,title,price,goods_img FROM goods WHERE cate_id = ?",1).Scan(&goodCateList)

    
	c.JSON(http.StatusOK, gin.H{
		"goodsCateList":goodCateList,
		
	})
}


func (con DefaultController) Dianshi(c *gin.Context) {
	//获取分类数据
	goodCateList :=[]models.Goods{}
	models.DB.Raw("SELECT id,title,price,goods_img FROM goods WHERE cate_id = ?",4).Scan(&goodCateList)

    
	c.JSON(http.StatusOK, gin.H{
		"goodsCateList":goodCateList,
		
	})

}

func (con DefaultController) Jiadian(c *gin.Context) {
	//获取分类数据
	goodCateList :=[]models.Goods{}
	models.DB.Raw("SELECT title,price,goods_img FROM goods WHERE cate_id = ?",6).Scan(&goodCateList)

    
	c.JSON(http.StatusOK, gin.H{
		"goodsCateList":goodCateList,
		
	})

}


func (con DefaultController) Bijiben(c *gin.Context) {
	//获取分类数据
	goodCateList :=[]models.Goods{}
	models.DB.Raw("SELECT title,price,goods_img FROM goods WHERE cate_id = ?",8).Scan(&goodCateList)

    
	c.JSON(http.StatusOK, gin.H{
		"goodsCateList":goodCateList,
		
	})

}

func (con DefaultController) Chuxing(c *gin.Context) {
	//获取分类数据
	goodCateList :=[]models.Goods{}
	models.DB.Raw("SELECT title,price,goods_img FROM goods WHERE cate_id = ?",7).Scan(&goodCateList)

    
	c.JSON(http.StatusOK, gin.H{
		"goodsCateList":goodCateList,
		
	})

}

func (con DefaultController) Erji(c *gin.Context) {
	//获取分类数据
	goodCateList :=[]models.Goods{}
	models.DB.Raw("SELECT title,price,goods_img FROM goods WHERE cate_id = ?",11).Scan(&goodCateList)  
	c.JSON(http.StatusOK, gin.H{
		"goodsCateList":goodCateList,
	})
}



func (con DefaultController) Buyshop(c *gin.Context) {
		id := c.Query("id")
		fmt.Println(id)
		
		
		userClient :=pdUser.NewUserService("user",models.UserClient)
		res,_:=userClient.GetGood(context.Background(),&pdUser.GetGoodRequest{
			Id: id,
		})
		
		if res.Success {
			c.JSON(200,gin.H{
			"goodsCateList":res.Goodslist,
			
		})
		}
		
		
}