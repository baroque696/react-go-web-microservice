package handler

import (
	"context"
	"rbac/models"
	pb "rbac/proto/rbac"
)

type Rbac struct{}
//后台用户登录的微服务
func (e *Rbac) Login(ctx context.Context, req *pb.LoginRequest, res *pb.LoginResponse) error {
	managerList := []models.Manager{}
	err := models.DB.Where("username=? AND password=?", req.Username, req.Password).Find(&managerList).Error
	//处理数据
	var templist []*pb.ManagerModel
	for i := 0; i < len(managerList); i++ {
		templist = append(templist, &pb.ManagerModel{
			Id: int64(managerList[i].Id),
			Username: managerList[i].Username,
			Password: managerList[i].Password,
			Mobile: managerList[i].Mobile,
			Email: managerList[i].Email,
			Status: int64(managerList[i].Status),
			RoleId: int64(managerList[i].RoleId),
			AddTime: int64(managerList[i].AddTime),
			IsSuper: int64(managerList[i].IsSuper),
		})
	}

	if len(managerList) > 0{
		res.IsLogin = true
		
	}else {
		res.IsLogin = false
	}
	res.Userlist=templist
	return err
}

