package models

type GoodsColor struct {
	Id         int
	ColorName  string
	ColorValue string
	Status     int
	Checked    bool `gorm:"-"` // 忽略本字段
}

func (GoodsColor) TableName() string {
	return "goods_color"
}
