import { React, useState, useEffect } from "react";
import {
  Container,
  Row,
  Col,
  Nav,
  Carousel,
  Button,Modal, Form

} from "react-bootstrap";
import { useLocation, Link } from "react-router-dom";
import axios from "axios";
import Header from "../../components/header";
import Search from "../home/search";
import Logo from "../../assets/logo.png";
import R1 from "../../assets/redmi/r1.png"
import R2 from "../../assets/redmi/r2.png";
import R3 from "../../assets/redmi/r3.png";
import R4 from "../../assets/redmi/r4.png";
import R5 from "../../assets/redmi/r5.png";
import Footer from "../../components/footer";

export default function Buyshop() {
  
  const [show, setShow] = useState(false);
  const [address, setAddress] = useState("");

  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);
  const hadnleSave = () => {
    handleClose();
  };
  const hadnleAddressChange = (event) => {
    setAddress(event.target.value);
  };

  //获取id
  const location = useLocation();
  const id = new URLSearchParams(location.search).get("id");

  const [goodsList, setGoodsList] = useState([]);
   useEffect(() => {
     if (id) {
       axios
         .get("http://localhost:8080/buy", {
           params: {
             id: id,
           },
         })
         .then((response) => {
           console.log(response.data);
           setGoodsList(response.data.goodsCateList);
         })
         .catch((error) => {
           console.error("发生错误:", error);
         });
     }
   }, [id]);

  // 选择的版本号
  const [version, setVersion] = useState("");

  // 选择的颜色
  const [color, setColor] = useState("");

  // 版本号选项和价格
  const versionOptions = [
    { name: "4GB+64GB", price: "899元" },
    { name: "4GB+128GB", price: "999元" },
    { name: "6GB+64GB", price: "1099元" },
    { name: "6GB+128GB", price: "1199元" },
  ];

  // 颜色选项
  const colorOptions = ["暗影黑", "深海蓝", "薄荷绿", "熏衣紫"];

  // 根据版本号获取价格
  const getPriceByVersion = (version) => {
    const selectedVersion = versionOptions.find(
      (option) => option.name === version
    );
    return selectedVersion ? selectedVersion.price : "";
  };

  // 处理版本号按钮点击事件
  const handleVersionClick = (event) => {
    setVersion(event.target.value);
  };

  // 处理颜色按钮点击事件
  const handleColorClick = (event) => {
    setColor(event.target.value);
  };
  //保存数据
  
  return (
    <Container fluid>
      <Header />
      <Container>
        <Row>
          <Col xs={2}>
            <img
              src={Logo}
              alt="logo"
              style={{ width: "56px", height: "56px" }}
              className="costyle"
            />
          </Col>
          <Col xs={6} className="csstyle">
            <Nav style={{ display: "inline-flex" }} className="postyle">
              <Nav.Link
                href="#"
                style={{ color: "black", cursor: "pointer" }}
                onMouseOver={(e) => (e.target.style.color = "#FF6A00")}
                onMouseOut={(e) => (e.target.style.color = "black")}
              >
                手机
              </Nav.Link>
            </Nav>

            <Nav style={{ display: "inline-flex" }}>
              <Nav.Link
                href="#"
                style={{ color: "black", cursor: "pointer" }}
                onMouseOver={(e) => (e.target.style.color = "#FF6A00")}
                onMouseOut={(e) => (e.target.style.color = "black")}
              >
                电脑
              </Nav.Link>
            </Nav>

            <Nav style={{ display: "inline-flex" }}>
              <Nav.Link
                href="#"
                style={{ color: "black", cursor: "pointer" }}
                onMouseOver={(e) => (e.target.style.color = "#FF6A00")}
                onMouseOut={(e) => (e.target.style.color = "black")}
              >
                笔记本
              </Nav.Link>
            </Nav>

            <Nav style={{ display: "inline-flex" }}>
              <Nav.Link
                href="#"
                style={{ color: "black", cursor: "pointer" }}
                onMouseOver={(e) => (e.target.style.color = "#FF6A00")}
                onMouseOut={(e) => (e.target.style.color = "black")}
              >
                平板
              </Nav.Link>
            </Nav>

            <Nav style={{ display: "inline-flex" }}>
              <Nav.Link
                href="#"
                style={{ color: "black", cursor: "pointer" }}
                onMouseOver={(e) => (e.target.style.color = "#FF6A00")}
                onMouseOut={(e) => (e.target.style.color = "black")}
              >
                家电
              </Nav.Link>
            </Nav>

            <Nav style={{ display: "inline-flex" }}>
              <Nav.Link
                href="#"
                style={{ color: "black", cursor: "pointer" }}
                onMouseOver={(e) => (e.target.style.color = "#FF6A00")}
                onMouseOut={(e) => (e.target.style.color = "black")}
              >
                路由器
              </Nav.Link>
            </Nav>

            <Nav style={{ display: "inline-flex" }}>
              <Nav.Link
                href="#"
                style={{ color: "black", cursor: "pointer" }}
                onMouseOver={(e) => (e.target.style.color = "#FF6A00")}
                onMouseOut={(e) => (e.target.style.color = "black")}
              >
                服务中心
              </Nav.Link>
            </Nav>

            <Nav style={{ display: "inline-flex" }}>
              <Nav.Link
                href="#"
                style={{ color: "black", cursor: "pointer" }}
                onMouseOver={(e) => (e.target.style.color = "#FF6A00")}
                onMouseOut={(e) => (e.target.style.color = "black")}
              >
                社区
              </Nav.Link>
            </Nav>
          </Col>

          <Col xs={3} className="seestyle">
            <Search />
          </Col>
        </Row>
        <Row style={{ marginTop: "70px", float: "left", width: "600px" }}>
          <Col>
            <Carousel
              prevIcon={
                <span
                  aria-hidden="true"
                  className="carousel-control-prev-icon"
                  style={{
                    marginLeft: "-200px",
                    backgroundColor: "rgb(127,127,127)",
                  }}
                />
              }
              nextIcon={
                <span
                  aria-hidden="true"
                  className="carousel-control-next-icon"
                  style={{
                    marginLeft: "50px",
                    backgroundColor: "rgb(127,127,127)",
                  }}
                />
              }
            >
              <Carousel.Item style={{ height: "500px" }}>
                <img
                  src={R1}
                  alt="First slide"
                  style={{
                    height: "450px",

                    marginLeft: "90px",
                  }}
                />
              </Carousel.Item>
              <Carousel.Item style={{ height: "500px" }}>
                <img
                  src={R3}
                  alt="First slide"
                  style={{
                    height: "450px",

                    marginLeft: "90px",
                  }}
                />
              </Carousel.Item>
              <Carousel.Item style={{ height: "500px" }}>
                <img
                  src={R2}
                  alt="First slide"
                  style={{
                    height: "450px",

                    marginLeft: "90px",
                  }}
                />
              </Carousel.Item>
              <Carousel.Item style={{ height: "500px" }}>
                <img
                  src={R4}
                  alt="First slide"
                  style={{
                    height: "450px",

                    marginLeft: "90px",
                  }}
                />
              </Carousel.Item>
              <Carousel.Item style={{ height: "500px" }}>
                <img
                  src={R5}
                  alt="First slide"
                  style={{
                    height: "450px",

                    marginLeft: "90px",
                  }}
                />
              </Carousel.Item>
            </Carousel>
          </Col>
        </Row>
        <Row style={{ position: "absolute", left: "800px", top: "200px" }}>
          <div style={{ fontSize: "24px" }}>{goodsList.title}</div>

          <div style={{ marginTop: "20px" }}>
            地址：
            <>
              <span>{address}</span>
              <Button
                variant="outline-light"
                style={{ color: "rgb(255,103,0)" }}
                onClick={handleShow}
              >
                修改
              </Button>

              <Modal show={show} onHide={handleClose} centered>
                <Modal.Header closeButton>
                  <Modal.Title>添加收货地址</Modal.Title>
                </Modal.Header>
                <Modal.Body>
                  <Form>
                    <Form.Group
                      as={Row}
                      className="mb-3"
                      controlId="formPlaintextName"
                    >
                      <Col sm="10" xs={1}>
                        <span style={{ position: "absolute" }}>姓名</span>
                        <Form.Control
                          type="text"
                          placeholder="收货人姓名"
                          style={{
                            width: "110px",
                            position: "absolute",
                            marginLeft: "45px",
                            marginTop: "-5px",
                          }}
                        />
                      </Col>

                      <Col sm="10" style={{ marginTop: "7px" }}>
                        <span
                          style={{
                            position: "absolute",
                            left: "270px",
                            top: "16px",
                          }}
                        >
                          手机号
                        </span>
                        <Form.Control
                          type="text"
                          placeholder="收货人手机号"
                          style={{
                            width: "150px",
                            position: "absolute",
                            left: "330px",
                            top: "10px",
                          }}
                        />
                      </Col>
                    </Form.Group>

                    <Form.Group
                      as={Row}
                      className="mb-3"
                      controlId="formPlaintextAddress"
                      style={{ marginTop: "50px" }}
                    >
                      <Form.Label column sm="2" style={{ width: "100px" }}>
                        收货地址
                      </Form.Label>
                      <Col sm="10">
                        <Form.Control
                          type="text"
                          placeholder="详细地址"
                          style={{
                            width: "380px",
                            position: "absolute",
                            marginLeft: "85px",
                            marginTop: "-38px",
                          }}
                          value={address}
                          onChange={hadnleAddressChange}
                        />
                      </Col>
                    </Form.Group>
                  </Form>
                </Modal.Body>
                <Modal.Footer>
                  <Button variant="secondary" onClick={handleClose}>
                    关闭
                  </Button>
                  <Button variant="primary" onClick={hadnleSave}>
                    保存
                  </Button>
                </Modal.Footer>
              </Modal>
            </>
          </div>
          <div style={{ marginTop: "30px" }}>
            <div>
              <h5>选择版本号:</h5>
              <div>
                {versionOptions.map((option) => (
                  <button
                    key={option.name}
                    value={option.name}
                    onClick={handleVersionClick}
                    style={{
                      marginRight: 10,
                      marginBottom: 10,
                      backgroundColor:
                        option.name === version ? "rgb(255,103,0)" : "white",
                    }}
                  >
                    {option.name}
                  </button>
                ))}
              </div>

              <h5>选择颜色:</h5>
              <div>
                {colorOptions.map((option) => (
                  <button
                    key={option}
                    value={option}
                    onClick={handleColorClick}
                    style={{
                      marginRight: 10,
                      marginBottom: 10,
                      backgroundColor:
                        option === color ? "rgb(255,103,0)" : "white",
                    }}
                  >
                    {option}
                  </button>
                ))}
              </div>

              {version && color && (
                <p>
                  你选择了 {version} - {color} 的{goodsList.title}，价格为{" "}
                  {getPriceByVersion(version)}。
                </p>
              )}
            </div>
          </div>

          <div
            style={{
              marginTop: "20px",
              fontSize: "24px",
              color: "rgb(255,103,0)",
            }}
          >
            总计{getPriceByVersion(version)}
          </div>

          <Link
            to={`/cart?goodname=${(goodsList.title)}`}
            style={{
              textDecoration: "none",
              backgroundColor: "rgb(255,103,0)",
              height: "53px",
              width: "299px",
              marginTop: "20px",
              marginLeft: "10px",
            }}
          >
            <span
              style={{
                color: "white",
                fontSize: "16px",
                position: "absolute",
                marginLeft: "95px",
                lineHeight: "50px",
              }}
            >
              加入购物车
            </span>
          </Link>
        </Row>
        <Row style={{ position: "absolute", top: "700px" }}>
          <Footer></Footer>
        </Row>
      </Container>
    </Container>
  );
}
