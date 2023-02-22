import {React,useState} from "react";
import { Container, Row, Col, Button, Form } from "react-bootstrap";
import { Link, NavLink, useNavigate } from "react-router-dom";
import "./index.css"
import Logo from "../../assets/logo.png";
import axios from "axios";

export default function Login() {
  const [phone, setPhone] = useState("");
  const [password, setPassword] = useState("")
  const [message, setMessage] = useState("")
  let history = useNavigate();

  const handleLogout = () => {
    localStorage.removeItem("user");
    history("/")
  }
  
  const handleSubmit = (event) => {
    event.preventDefault();
    const formdata = new URLSearchParams();
    formdata.append("phone", phone);
    formdata.append("password", password);
    axios
      .post("http://localhost:8080/login", formdata, {
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
      },
      })
      .then((respone) => {
        console.log(respone.data);
        //设置过期时间10分钟
        const expirationTime = new Date().getTime() + 10 * 60 * 1000;
        localStorage.setItem(
          "user",
          JSON.stringify({
            phone: respone.data.phone,
            expirationTime: expirationTime,
          })
        );
        

        if (respone.data.error) {
          console.log("用户不存在或密码错误");
          setMessage("用户不存在或密码错误");
        } else {
          console.log("登录成功");

          //计划在过期时间后删除localStorage数据
          setTimeout(() => {
            handleLogout();
          }, expirationTime - new Date().getTime())
          history("/");
        }
      })
      .catch((error) => {
        console.log("error:",error)
      })
  }
  

  
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
            to="/#"
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
            <Form.Group className="mb-3" controlId="formBasicEmail">
              <Form.Label>账户</Form.Label>
              <Form.Control
                type="text"
                placeholder="手机号"
                value={phone}
                onChange={(e) => setPhone(e.target.value)}
              />
              <p style={{ color: "red" }}>{message}</p>
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
              登录
            </Button>
            <NavLink
              to={"#"}
              style={{ color: "rgb(255,103,0)", marginLeft: "450px" }}
            >
              忘记密码?
            </NavLink>
          </Form>
        </Col>
      </Row>
    </Container>
  );
}
