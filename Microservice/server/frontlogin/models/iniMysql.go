package models

//https://gorm.io/zh_CN/docs/connecting_to_the_database.html

//微服务项目中推荐一个微服务对应一个数据库
import (
	"fmt"
	

	
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

var DB *gorm.DB
var err error

func init() {
	//读取.ini里面的数据库配置

	

	ip := Config.Section("mysql").Key("ip").String()
	port := Config.Section("mysql").Key("port").String()
	user := Config.Section("mysql").Key("user").String()
	password := Config.Section("mysql").Key("password").String()
	database := Config.Section("mysql").Key("database").String()

	// dsn := "root:123456@tcp(192.168.0.6:3306)/gin?charset=utf8mb4&parseTime=True&loc=Local"
	dsn := fmt.Sprintf("%v:%v@tcp(%v:%v)/%v?charset=utf8mb4&parseTime=True&loc=Local", user, password, ip, port, database)
	DB, err = gorm.Open(mysql.Open(dsn), &gorm.Config{
		QueryFields: true, //打印sql
		//SkipDefaultTransaction: true, //禁用事务
	})
	// DB.Debug()
	if err != nil {
		fmt.Println(err)
	}
}
