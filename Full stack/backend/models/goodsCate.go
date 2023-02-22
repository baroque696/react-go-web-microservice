package models

type GoodsCate struct {
	Id             int	`json:"id"`
	Title          string	`json:"title"`
	CateImg        string	`json:"cateImg"`
	Link           string	`json:"link"`
	Template       string	`json:"template"`
	Pid            int	`json:"pid"`
	SubTitle       string	`json:"subTitled"`
	Keywords       string	`json:"keywords"`
	Description    string	`json:"description"`
	Sort           int	`json:"sort"`
	Status         int	`json:"status"`
	AddTime        int	`json:"addTime"`
	GoodsCateItems []GoodsCate `gorm:"foreignKey:pid;references:Id"`
}

func (GoodsCate) TableName() string {
	return "goods_cate"
}
