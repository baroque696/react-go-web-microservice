// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.1
// 	protoc        v3.21.11
// source: proto/captcha.proto

package captcha

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type MakeCaptchaRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Height int32 `protobuf:"varint,1,opt,name=height,proto3" json:"height,omitempty"`
	Width  int32 `protobuf:"varint,2,opt,name=width,proto3" json:"width,omitempty"`
	Length int32 `protobuf:"varint,3,opt,name=length,proto3" json:"length,omitempty"`
}

func (x *MakeCaptchaRequest) Reset() {
	*x = MakeCaptchaRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_captcha_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *MakeCaptchaRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*MakeCaptchaRequest) ProtoMessage() {}

func (x *MakeCaptchaRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_captcha_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use MakeCaptchaRequest.ProtoReflect.Descriptor instead.
func (*MakeCaptchaRequest) Descriptor() ([]byte, []int) {
	return file_proto_captcha_proto_rawDescGZIP(), []int{0}
}

func (x *MakeCaptchaRequest) GetHeight() int32 {
	if x != nil {
		return x.Height
	}
	return 0
}

func (x *MakeCaptchaRequest) GetWidth() int32 {
	if x != nil {
		return x.Width
	}
	return 0
}

func (x *MakeCaptchaRequest) GetLength() int32 {
	if x != nil {
		return x.Length
	}
	return 0
}

type MakeCaptchaResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id   string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	B64S string `protobuf:"bytes,2,opt,name=b64s,proto3" json:"b64s,omitempty"`
}

func (x *MakeCaptchaResponse) Reset() {
	*x = MakeCaptchaResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_captcha_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *MakeCaptchaResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*MakeCaptchaResponse) ProtoMessage() {}

func (x *MakeCaptchaResponse) ProtoReflect() protoreflect.Message {
	mi := &file_proto_captcha_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use MakeCaptchaResponse.ProtoReflect.Descriptor instead.
func (*MakeCaptchaResponse) Descriptor() ([]byte, []int) {
	return file_proto_captcha_proto_rawDescGZIP(), []int{1}
}

func (x *MakeCaptchaResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *MakeCaptchaResponse) GetB64S() string {
	if x != nil {
		return x.B64S
	}
	return ""
}

type VerifyCaptchaRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id          string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	VerifyValue string `protobuf:"bytes,2,opt,name=verifyValue,proto3" json:"verifyValue,omitempty"`
}

func (x *VerifyCaptchaRequest) Reset() {
	*x = VerifyCaptchaRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_captcha_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *VerifyCaptchaRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*VerifyCaptchaRequest) ProtoMessage() {}

func (x *VerifyCaptchaRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_captcha_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use VerifyCaptchaRequest.ProtoReflect.Descriptor instead.
func (*VerifyCaptchaRequest) Descriptor() ([]byte, []int) {
	return file_proto_captcha_proto_rawDescGZIP(), []int{2}
}

func (x *VerifyCaptchaRequest) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *VerifyCaptchaRequest) GetVerifyValue() string {
	if x != nil {
		return x.VerifyValue
	}
	return ""
}

type VerifyCaptchaResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	VerifyResult bool `protobuf:"varint,1,opt,name=verifyResult,proto3" json:"verifyResult,omitempty"`
}

func (x *VerifyCaptchaResponse) Reset() {
	*x = VerifyCaptchaResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_captcha_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *VerifyCaptchaResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*VerifyCaptchaResponse) ProtoMessage() {}

func (x *VerifyCaptchaResponse) ProtoReflect() protoreflect.Message {
	mi := &file_proto_captcha_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use VerifyCaptchaResponse.ProtoReflect.Descriptor instead.
func (*VerifyCaptchaResponse) Descriptor() ([]byte, []int) {
	return file_proto_captcha_proto_rawDescGZIP(), []int{3}
}

func (x *VerifyCaptchaResponse) GetVerifyResult() bool {
	if x != nil {
		return x.VerifyResult
	}
	return false
}

var File_proto_captcha_proto protoreflect.FileDescriptor

var file_proto_captcha_proto_rawDesc = []byte{
	0x0a, 0x13, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x63, 0x61, 0x70, 0x74, 0x63, 0x68, 0x61, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x07, 0x63, 0x61, 0x70, 0x74, 0x63, 0x68, 0x61, 0x22, 0x5a,
	0x0a, 0x12, 0x4d, 0x61, 0x6b, 0x65, 0x43, 0x61, 0x70, 0x74, 0x63, 0x68, 0x61, 0x52, 0x65, 0x71,
	0x75, 0x65, 0x73, 0x74, 0x12, 0x16, 0x0a, 0x06, 0x68, 0x65, 0x69, 0x67, 0x68, 0x74, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x05, 0x52, 0x06, 0x68, 0x65, 0x69, 0x67, 0x68, 0x74, 0x12, 0x14, 0x0a, 0x05,
	0x77, 0x69, 0x64, 0x74, 0x68, 0x18, 0x02, 0x20, 0x01, 0x28, 0x05, 0x52, 0x05, 0x77, 0x69, 0x64,
	0x74, 0x68, 0x12, 0x16, 0x0a, 0x06, 0x6c, 0x65, 0x6e, 0x67, 0x74, 0x68, 0x18, 0x03, 0x20, 0x01,
	0x28, 0x05, 0x52, 0x06, 0x6c, 0x65, 0x6e, 0x67, 0x74, 0x68, 0x22, 0x39, 0x0a, 0x13, 0x4d, 0x61,
	0x6b, 0x65, 0x43, 0x61, 0x70, 0x74, 0x63, 0x68, 0x61, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73,
	0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69,
	0x64, 0x12, 0x12, 0x0a, 0x04, 0x62, 0x36, 0x34, 0x73, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x04, 0x62, 0x36, 0x34, 0x73, 0x22, 0x48, 0x0a, 0x14, 0x56, 0x65, 0x72, 0x69, 0x66, 0x79, 0x43,
	0x61, 0x70, 0x74, 0x63, 0x68, 0x61, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x0e, 0x0a,
	0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x20, 0x0a,
	0x0b, 0x76, 0x65, 0x72, 0x69, 0x66, 0x79, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x02, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x0b, 0x76, 0x65, 0x72, 0x69, 0x66, 0x79, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x22,
	0x3b, 0x0a, 0x15, 0x56, 0x65, 0x72, 0x69, 0x66, 0x79, 0x43, 0x61, 0x70, 0x74, 0x63, 0x68, 0x61,
	0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x22, 0x0a, 0x0c, 0x76, 0x65, 0x72, 0x69,
	0x66, 0x79, 0x52, 0x65, 0x73, 0x75, 0x6c, 0x74, 0x18, 0x01, 0x20, 0x01, 0x28, 0x08, 0x52, 0x0c,
	0x76, 0x65, 0x72, 0x69, 0x66, 0x79, 0x52, 0x65, 0x73, 0x75, 0x6c, 0x74, 0x32, 0xa7, 0x01, 0x0a,
	0x07, 0x43, 0x61, 0x70, 0x74, 0x63, 0x68, 0x61, 0x12, 0x4a, 0x0a, 0x0b, 0x4d, 0x61, 0x6b, 0x65,
	0x43, 0x61, 0x70, 0x74, 0x63, 0x68, 0x61, 0x12, 0x1b, 0x2e, 0x63, 0x61, 0x70, 0x74, 0x63, 0x68,
	0x61, 0x2e, 0x4d, 0x61, 0x6b, 0x65, 0x43, 0x61, 0x70, 0x74, 0x63, 0x68, 0x61, 0x52, 0x65, 0x71,
	0x75, 0x65, 0x73, 0x74, 0x1a, 0x1c, 0x2e, 0x63, 0x61, 0x70, 0x74, 0x63, 0x68, 0x61, 0x2e, 0x4d,
	0x61, 0x6b, 0x65, 0x43, 0x61, 0x70, 0x74, 0x63, 0x68, 0x61, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e,
	0x73, 0x65, 0x22, 0x00, 0x12, 0x50, 0x0a, 0x0d, 0x56, 0x65, 0x72, 0x69, 0x66, 0x79, 0x43, 0x61,
	0x70, 0x74, 0x63, 0x68, 0x61, 0x12, 0x1d, 0x2e, 0x63, 0x61, 0x70, 0x74, 0x63, 0x68, 0x61, 0x2e,
	0x56, 0x65, 0x72, 0x69, 0x66, 0x79, 0x43, 0x61, 0x70, 0x74, 0x63, 0x68, 0x61, 0x52, 0x65, 0x71,
	0x75, 0x65, 0x73, 0x74, 0x1a, 0x1e, 0x2e, 0x63, 0x61, 0x70, 0x74, 0x63, 0x68, 0x61, 0x2e, 0x56,
	0x65, 0x72, 0x69, 0x66, 0x79, 0x43, 0x61, 0x70, 0x74, 0x63, 0x68, 0x61, 0x52, 0x65, 0x73, 0x70,
	0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x42, 0x11, 0x5a, 0x0f, 0x2e, 0x2f, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x2f, 0x63, 0x61, 0x70, 0x74, 0x63, 0x68, 0x61, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x33,
}

var (
	file_proto_captcha_proto_rawDescOnce sync.Once
	file_proto_captcha_proto_rawDescData = file_proto_captcha_proto_rawDesc
)

func file_proto_captcha_proto_rawDescGZIP() []byte {
	file_proto_captcha_proto_rawDescOnce.Do(func() {
		file_proto_captcha_proto_rawDescData = protoimpl.X.CompressGZIP(file_proto_captcha_proto_rawDescData)
	})
	return file_proto_captcha_proto_rawDescData
}

var file_proto_captcha_proto_msgTypes = make([]protoimpl.MessageInfo, 4)
var file_proto_captcha_proto_goTypes = []interface{}{
	(*MakeCaptchaRequest)(nil),    // 0: captcha.MakeCaptchaRequest
	(*MakeCaptchaResponse)(nil),   // 1: captcha.MakeCaptchaResponse
	(*VerifyCaptchaRequest)(nil),  // 2: captcha.VerifyCaptchaRequest
	(*VerifyCaptchaResponse)(nil), // 3: captcha.VerifyCaptchaResponse
}
var file_proto_captcha_proto_depIdxs = []int32{
	0, // 0: captcha.Captcha.MakeCaptcha:input_type -> captcha.MakeCaptchaRequest
	2, // 1: captcha.Captcha.VerifyCaptcha:input_type -> captcha.VerifyCaptchaRequest
	1, // 2: captcha.Captcha.MakeCaptcha:output_type -> captcha.MakeCaptchaResponse
	3, // 3: captcha.Captcha.VerifyCaptcha:output_type -> captcha.VerifyCaptchaResponse
	2, // [2:4] is the sub-list for method output_type
	0, // [0:2] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_proto_captcha_proto_init() }
func file_proto_captcha_proto_init() {
	if File_proto_captcha_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_proto_captcha_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*MakeCaptchaRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_captcha_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*MakeCaptchaResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_captcha_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*VerifyCaptchaRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_captcha_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*VerifyCaptchaResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_proto_captcha_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   4,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_proto_captcha_proto_goTypes,
		DependencyIndexes: file_proto_captcha_proto_depIdxs,
		MessageInfos:      file_proto_captcha_proto_msgTypes,
	}.Build()
	File_proto_captcha_proto = out.File
	file_proto_captcha_proto_rawDesc = nil
	file_proto_captcha_proto_goTypes = nil
	file_proto_captcha_proto_depIdxs = nil
}
