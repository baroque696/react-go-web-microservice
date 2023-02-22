package main

import (
	"rbac/handler"
	"rbac/models"
	pb "rbac/proto/rbac"

	"github.com/asim/go-micro/plugins/registry/consul/v4"
	"go-micro.dev/v4"
	"go-micro.dev/v4/logger"
	"go-micro.dev/v4/registry"
)

var (
	service = "rbac"
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
	if err := pb.RegisterRbacHandler(srv.Server(), new(handler.Rbac)); err != nil {
		logger.Fatal(err)
	}
	// Run service
	if err := srv.Run(); err != nil {
		logger.Fatal(err)
	}
}
