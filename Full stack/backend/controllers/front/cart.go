package front

import (
	"backend/models"
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"
)

type CartControllor struct{}


func (con CartControllor) Cart(c *gin.Context) {
	
	var req struct {
        Phone string `json:"phone"`
				GoodName string `json:"goodName"`
    }
    if err := c.ShouldBindJSON(&req); err != nil {
        c.AbortWithStatusJSON(http.StatusBadRequest, gin.H{
            "error": err.Error(),
        })
        return
    }
		phone := req.Phone
		name := req.GoodName
		
		goodList := models.UserGood{}
		models.DB.Raw("SELECT * FROM `user_cart` where phone = ? AND good_name = ?",phone,name).Scan(&goodList)
		if goodList.Id > 0 {
			c.JSON(200, gin.H{
				"id" : goodList.Id,
				
				"name" : goodList.GoodName,
				"price" : goodList.GoodPrice,
				"image" : goodList.GoodImage,
				"quantity" : "1",
				"selected":"false",

			})
			
		}else {
			goods := models.Goods{}
			models.DB.Raw("SELECT * FROM `goods` where title = ?",name).Scan(&goods)
			goodList.Id = goods.Id
			goodList.Phone = phone
			goodList.GoodName = goods.Title
			goodList.GoodPrice = goods.Price
			goodList.GoodImage = goods.GoodsImg
			models.DB.Save(&goodList)
			c.JSON(200,gin.H{
				"id" : goodList.Id,
				"phone":phone,
				"name" : goodList.GoodName,
				"price" : goodList.GoodPrice,
				"image" : goodList.GoodImage,
				"quantity" : "1",
				"selected":"false",
				
			})
		}
    fmt.Println(phone)
		fmt.Println(name)
		
		
}