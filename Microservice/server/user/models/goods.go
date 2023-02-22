package models


type Goods struct {
	Id  int
	Title string
	Price float64
	GoodsImg string
}

func (Goods) TableName() string  {
	return "goods"
}