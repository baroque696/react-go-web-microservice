package main

import (
	"captcha/handler"
	pb "captcha/proto/captcha"

	"github.com/asim/go-micro/plugins/registry/consul/v4"
	"go-micro.dev/v4"
	"go-micro.dev/v4/logger"
	"go-micro.dev/v4/registry"
)

var (
	service = "captcha"
	version = "latest"
)

func main() {
	//配置consul
	consulReg := consul.NewRegistry(
		registry.Addrs("127.0.0.1:8500"),
	)


	// Create service
	srv := micro.NewService(
	)
	srv.Init(
		micro.Name(service),
		micro.Version(version),
		micro.Registry(consulReg),
	)

	// Register handler
	if err := pb.RegisterCaptchaHandler(srv.Server(), new(handler.Captcha)); err != nil {
		logger.Fatal(err)
	}
	// Run service
	if err := srv.Run(); err != nil {
		logger.Fatal(err)
	}
}
