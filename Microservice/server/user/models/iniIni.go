package models

import (
	"fmt"
	"os"

	"gopkg.in/ini.v1"
)

var Config *ini.File

var iniErr error

func init()  {
	Config,iniErr = ini.Load("./conf/app.ini")
	if iniErr != nil {
		fmt.Printf("Fail to read file: %v",iniErr)
		os.Exit(1)
	}
}