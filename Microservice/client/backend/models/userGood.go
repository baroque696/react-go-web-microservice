package models

type UserGood struct {
	Id int	`json:"id"`
	Phone string	`json:"Phone"`
	GoodName string	`json:"goodName"`
	GoodPrice float64	`json:"goodPrice"`
	GoodImage string	`json:"goodsImage"`
	
}

func (UserGood) TableName() string  {
	return "user_cart"
}