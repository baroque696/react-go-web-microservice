package handler

import (
	"context"

	"user/models"
	pb "user/proto/user"
)

type User struct{}

func (e *User) GetGood(ctx context.Context, req *pb.GetGoodRequest, res *pb.GetGoodResponse) error {
	goodsCateList :=models.Goods{}
	models.DB.Raw("SELECT title,price,goods_img FROM goods WHERE id = ?",req.Id).Scan(&goodsCateList)
	//处理数据
	var item []*pb.Goods
	item = append(item,&pb.Goods{
		Title: goodsCateList.Title,
		Price: float32(goodsCateList.Price),
		GoodsImg: goodsCateList.GoodsImg,
	} )
	res.Success = true
	res.Goodslist = item

	return nil
}


