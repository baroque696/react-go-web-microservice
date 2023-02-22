package models

import (
	"github.com/asim/go-micro/plugins/registry/consul/v4"
	"go-micro.dev/v4"
	"go-micro.dev/v4/client"
	"go-micro.dev/v4/registry"
	
)

var UserClient client.Client
func init() {
	//配置服务发现
	consulReg := consul.NewRegistry(
		registry.Addrs("127.0.0.1:8500"),
	)

	// Create service

	srv := micro.NewService(
		micro.Registry(consulReg),
	)

	srv.Init()
	RbacClient=srv.Client()
}