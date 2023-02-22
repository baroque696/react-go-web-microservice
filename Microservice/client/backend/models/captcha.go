package models

import (
	pdCaptcha "backend/proto/captcha"
	"context"

	
	"go-micro.dev/v4/logger"
)

//调用验证码微服务
func MakeCaptcha(height int, width int,length int) (string,string,error) {
	

	// Create client
	captchaClient := pdCaptcha.NewCaptchaService("captcha", CaptchaClient)

		// Call service
	res, err := captchaClient.MakeCaptcha(context.Background(), &pdCaptcha.MakeCaptchaRequest{
		Height: int32(height),
		Width: int32(width),
		Length: int32(length),
	})
		if err != nil {
			logger.Fatal(err)
		}

		
	
	return res.Id,res.B64S,err

}

//验证验证码
func VerifyCaptcha(id string, VerifyValue string) bool {
	captchaClient := pdCaptcha.NewCaptchaService("captcha", CaptchaClient)

		// Call service
	res, err := captchaClient.VerifyCaptcha(context.Background(), &pdCaptcha.VerifyCaptchaRequest{
		Id: id,
		VerifyValue: VerifyValue,
	})
		if err != nil {
			logger.Fatal(err)
		}
		return res.VerifyResult
}
