package handler

import (
	"context"
	"fmt"
	"frontlogin/models"
	pb "frontlogin/proto/frontlogin"
)

type Frontlogin struct{}

func (e *Frontlogin) Frontlogin(ctx context.Context, req *pb.FrontloginRequest, res *pb.FrontloginResponse) error {
	userinfo := models.User{}
	password := models.Md5(req.Password) 
	models.DB.Where("phone = ? AND password = ?", req.Phone, password).Find(&userinfo)
	
	if userinfo.Id > 0 {
		res.Success = true
	}else {
		res.Success = false
	}
	fmt.Println(req.Phone)
	return nil
}
