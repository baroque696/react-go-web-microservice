$(function(){
    loginApp.init();
})
var loginApp={
    init:function(){
        this.getCaptcha()
        this.captchaImgChage()
    },
    getCaptcha:function(){
        $.get("/admin/captcha?t="+Math.random(),function(response){
            console.log(response)
            $("#captchaId").val(response.captchaId)
            $("#captchaImg").attr("src",response.captchaImage)
        })
    },
    captchaImgChage:function(){
        var that=this;
        $("#captchaImg").click(function(){
            that.getCaptcha()
        })
    }
}