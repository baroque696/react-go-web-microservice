package main

import (
	"register/handler"
	"register/models"
	pb "register/proto/register"

	"github.com/go-micro/plugins/v4/registry/consul"
	"go-micro.dev/v4"
	"go-micro.dev/v4/logger"
	"go-micro.dev/v4/registry"
)

var (
	service = "register"
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
	if err := pb.RegisterRegisterHandler(srv.Server(), new(handler.Register)); err != nil {
		logger.Fatal(err)
	}
	// Run service
	if err := srv.Run(); err != nil {
		logger.Fatal(err)
	}
}
