package models

type User struct {
	Id       int
	Phone    string
	Password string
	AddTime  int
	LastIp   string
	Email    string
	Status   int
}

//表示配置操作数据库的表名称
func (User) TableName() string {
	return "user"
}
