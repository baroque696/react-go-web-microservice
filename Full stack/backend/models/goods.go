package models

type Goods struct {
	Id            int	`json:"id"`
	Title         string	`json:"title"`
	SubTitle      string	`json:"subTitle"`
	GoodsSn       string	`json:"goodsSn"`
	CateId        int	`json:"cateId"`
	ClickCount    int	`json:"clickCount"`
	GoodsNumber   int	`json:"goodsNumber"`
	Price         float64	`json:"price"`
	MarketPrice   float64	`json:"marketPrice"`
	RelationGoods string	`json:"relationGoods"`
	GoodsAttr     string
	GoodsVersion  string
	GoodsImg      string	`json:"goodsImg"`
	GoodsGift     string
	GoodsFitting  string
	GoodsColor    string
	GoodsKeywords string
	GoodsDesc     string
	GoodsContent  string
	IsDelete      int
	IsHot         int
	IsBest        int
	IsNew         int
	GoodsTypeId   int
	Sort          int
	Status        int
	AddTime       int
}

func (Goods) TableName() string {
	return "goods"
}
