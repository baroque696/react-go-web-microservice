package main

import (
	"frontlogin/handler"
	"frontlogin/models"
	pb "frontlogin/proto/frontlogin"

	"github.com/go-micro/plugins/v4/registry/consul"
	"go-micro.dev/v4"
	"go-micro.dev/v4/logger"
	"go-micro.dev/v4/registry"
)

var (
	service = "frontlogin"
	version = "latest"
)

func main() {
	addr := models.Config.Section("consul").Key("addr").String()

	consulReg := consul.NewRegistry(
		registry.Addrs(addr),
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
	if err := pb.RegisterFrontloginHandler(srv.Server(), new(handler.Frontlogin)); err != nil {
		logger.Fatal(err)
	}
	// Run service
	if err := srv.Run(); err != nil {
		logger.Fatal(err)
	}
}
