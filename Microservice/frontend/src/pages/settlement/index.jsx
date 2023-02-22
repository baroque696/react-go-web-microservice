import { React, useState, useEffect } from "react";
import Footer from "../../components/footer";
import {
  Container,
  Row,
  Col,
  Button,
  Modal,
} from "react-bootstrap";
import { Link } from "react-router-dom";
import Logo from "../../assets/logo.png";
import Vxin from "../../assets/zhifu/vxin.jpg";
import Weixtubpng from "../../assets/zhifu/weixtubpng.png";
import Zhifubtubi from "../../assets/zhifu/zhifubtubi.jpg";
import Zifubao from "../../assets/zhifu/zifubao.jpg";



export default function Settlement() {
  const user = JSON.parse(localStorage.getItem("user"));
  console.log("user", user);
  if (!user) {
    //如果用户未登录，则跳转到登录页面
    window.location.href = "/login";
  }

  //账户
  const [phone, setPhone] = useState("");
  useEffect(() => {
    if (user && user.phone && !phone) {
      setPhone(user.phone);
    }
  }, [user, phone]);

  const [show, setShow] = useState(false);

  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);


  const [showa, setShowa] = useState(false);
  const handleClosea = () => setShowa(false);
  const handleShowa = () => setShowa(true);

  
  return (
    <Container fluid style={{ height: "125px", borderBottom: "2px solid red" }}>
      <Container>
        <Row>
          <Col xs={10}>
            <Link to={"/"}>
              <img
                src={Logo}
                alt="logo"
                style={{ height: "60px", width: "60px", marginTop: "30px" }}
              ></img>
            </Link>
            <span
              style={{
                fontSize: "28px",
                position: "absolute",
                marginTop: "36px",
                marginLeft: "60px",
              }}
            >
              完成支付
            </span>
          </Col>
          <Col style={{ marginTop: "45px", paddingLeft: "50px" }}>
            {phone ? (
              <span>欢迎,{phone}</span>
            ) : (
              <div>
                <Link
                  to={"/login"}
                  style={{ color: "rgb(117,117,117)", textDecoration: "none" }}
                >
                  <span className="dengz">登录</span>
                </Link>
                <span style={{ color: "rgb(117,117,117)", marginLeft: "5px" }}>
                  |
                </span>
                <Link
                  to={"/register"}
                  style={{
                    color: "rgb(117,117,117)",
                    textDecoration: "none",
                    marginLeft: "5px",
                  }}
                >
                  <span className="dengz">注册</span>
                </Link>
              </div>
            )}
          </Col>
        </Row>
        <Row style={{ marginTop: "100px" }}>
          <Col style={{ fontSize: "20px", marginLeft: "100px" }}>
            选择下面支付工具
          </Col>
        </Row>
        <Row>
          <Col
            style={{
              position: "absolute",
              marginLeft: "400px",
              marginTop: "50px",
            }}
          >
            <>
              <Link to={"#"} onClick={handleShow}>
                <img
                  src={Weixtubpng}
                  alt="logo"
                  style={{ height: "100px", width: "200px" }}
                />
              </Link>
              <Modal show={show} onHide={handleClose}>
                <Modal.Header closeButton>
                  <Modal.Title>微信支付</Modal.Title>
                </Modal.Header>
                <Modal.Body>
                  <img
                    src={Vxin}
                    alt="vxin"
                    style={{
                      height: "400px",
                      width: "300px",
                      marginLeft: "80px",
                    }}
                  />
                </Modal.Body>
                <Modal.Footer>
                  <Button variant="secondary" onClick={handleClose}>
                    关闭
                  </Button>
                  <Button variant="primary" onClick={handleClose}>
                    完成支付
                  </Button>
                </Modal.Footer>
              </Modal>
            </>
          </Col>
          <Col
            style={{
              position: "absolute",
              marginLeft: "800px",
              marginTop: "50px",
            }}
          >
            <>
              <Link to={"#"} onClick={handleShowa}>
                <img
                  src={Zhifubtubi}
                  alt="logo"
                  style={{ height: "100px", width: "200px" }}
                />
              </Link>
              <Modal show={showa} onHide={handleClosea}>
                <Modal.Header closeButton>
                  <Modal.Title>支付宝支付</Modal.Title>
                </Modal.Header>
                <Modal.Body>
                  <img
                    src={Zifubao}
                    alt="vxin"
                    style={{
                      height: "400px",
                      width: "300px",
                      marginLeft: "80px",
                    }}
                  />
                </Modal.Body>
                <Modal.Footer>
                  <Button variant="secondary" onClick={handleClosea}>
                    关闭
                  </Button>
                  <Button variant="primary" onClick={handleClosea}>
                    完成支付
                  </Button>
                </Modal.Footer>
              </Modal>
            </>
          </Col>
        </Row>
        <Row style={{ marginTop: "200px" }}></Row>

        <Row style={{ marginTop: "100px" }}>
          <Footer></Footer>
        </Row>
      </Container>
    </Container>
  );
}
