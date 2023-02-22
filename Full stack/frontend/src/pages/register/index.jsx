import { React, useState } from "react";
import { Form, Button, Container, Col, Row } from "react-bootstrap";
import { Link, NavLink, useNavigate } from "react-router-dom";
import Logo from "../../assets/logo.png";
import axios from "axios";
export default function Register() {
  const [phone, setPhone] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [message, setMessage] = useState("");
  let navigate = useNavigate();
  const handleSubmit = (event) => {
    event.preventDefault();
    const formData = new URLSearchParams();
    formData.append("phone", phone);
    formData.append("password", password);
    if (password !== confirmPassword) {
      setMessage("密码不匹配");
      return;
    }
    axios
      .post("http://localhost:8080/register", formData, {
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
        },
      })
      .then((response) => {
        console.log(response.data);
        if (response.data.success) {
          console.log("注册成功");
          navigate("/login"); // 跳转到其他页面
        } else {
          alert("该手机号已被注册。");
        }
      })
      .catch((error) => {
        console.error("发生错误:", error);
      });
  };
  return (
    <Container fluid>
      <Row style={{ float: "left" }}>
        <img
          src="https://cdn.web-global.fds.api.mi-img.com/mcfe--mi-account/static/static/media/banner.5b1efcd8.jpg"
          alt="shop"
          style={{ width: "375px", marginLeft: "-12px", height: "753px" }}
        />
      </Row>
      <Row
        style={{
          float: "left",
          marginLeft: "20px",
          marginTop: "25px",
          width: "1000px",
        }}
      >
        <Col>
          <img
            src={Logo}
            alt="logo"
            style={{ height: "50px", width: "50px" }}
          />
          <span
            style={{
              position: "absolute",
              fontSize: "25px",
              marginLeft: "10px",
              marginTop: "5px",
            }}
          >
            小米账户
          </span>
        </Col>
        <Col md="auto"></Col>
        <Col xs lg="4" style={{ marginLeft: "50px" }}>
          <span style={{ lineHeight: "50px", color: "#838383" }}>用户协议</span>
          <span style={{ marginLeft: "50px", color: "#838383" }}>隐私政策</span>
          <span style={{ marginLeft: "50px", color: "#838383" }}>帮助中心</span>
        </Col>
      </Row>

      <Row
        style={{
          height: "600px",
          width: "567px",
          backgroundColor: "white",
          position: "absolute",
          left: "620px",
          top: "100px",
        }}
      >
        <Col style={{ marginTop: "20px", fontSize: "23px", float: "left" }}>
          <NavLink
            to="/login"
            style={{
              display: "inline",
              textDecoration: "none",
              color: "black",
            }}
          >
            <span className="glsb">登录</span>
          </NavLink>
        </Col>
        <Col
          style={{
            marginLeft: "-400px",
            marginTop: "20px",
            fontSize: "23px",
            float: "left",
          }}
        >
          <Link
            to="/register"
            style={{
              display: "inline",
              textDecoration: "none",
              color: "black",
            }}
          >
            <span className="glsb">注册</span>
          </Link>
        </Col>
        <Col style={{ position: "absolute", marginTop: "100px" }}>
          <Form onSubmit={handleSubmit}>
            <Form.Group className="mb-3" controlId="formBasicText">
              <Form.Label>注册账户</Form.Label>

              <Form.Control
                type="text"
                placeholder="手机号"
                value={phone}
                onChange={(e) => setPhone(e.target.value)}
              />
            </Form.Group>

            <Form.Group className="mb-3" controlId="formBasicPassword">
              <Form.Label>密码</Form.Label>
              <Form.Control
                type="password"
                placeholder="密码"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
              />
            </Form.Group>
            <Form.Group className="mb-3" controlId="formPassword">
              <Form.Label>确认密码</Form.Label>
              <Form.Control
                type="password"
                placeholder="密码"
                value={confirmPassword}
                onChange={(event) => setConfirmPassword(event.target.value)}
              />
              <p style={{ color: "red" }}>{message}</p>
            </Form.Group>
            <Form.Group
              className="mb-3"
              controlId="agaPassword"
              style={{ width: "400px" }}
            >
              <Form.Control type="password" placeholder="请输入验证码" />
              <Button
                variant="primary"
                type="submit"
                style={{
                  position: "absolute",
                  marginLeft: "410px",
                  marginTop: "-39px",
                }}
              >
                获取验证码
              </Button>
            </Form.Group>
            <Form.Group className="mb-3" controlId="formBasicCheckbox">
              <Form.Check
                type="checkbox"
                label="以阅读并同意小米账户用户协议和隐私政策"
              />
            </Form.Group>
            <Button
              variant="primary"
              type="submit"
              style={{ marginLeft: "200px" }}
            >
              注册
            </Button>

            <NavLink
              to={"/#"}
              style={{ color: "rgb(255,103,0)", marginLeft: "420px" }}
            >
              收不到验证码?
            </NavLink>
          </Form>
        </Col>
      </Row>
    </Container>
  );
}
