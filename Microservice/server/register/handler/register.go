package handler

import (
	"context"

	"register/models"
	pb "register/proto/register"
)

type Register struct{}

func (e *Register) Register(ctx context.Context, req *pb.RegisterRequest, res *pb.RegisterResponse) error {
	phoneList := models.User{}
	models.DB.Raw("SELECT * FROM user WHERE phone = ?", req.Phone).Scan(&phoneList)
	if phoneList.Id > 0 {
		res.Success = true
	}else {
		phoneList.Phone=req.Phone
		phoneList.Password=models.Md5(req.Password)
		phoneList.AddTime=int(models.GetUnix())
		models.DB.Save(&phoneList)
		res.Success = false
	}

	return nil
}

