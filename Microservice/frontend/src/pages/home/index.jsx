import React from 'react'
import {
  Container,
  Row,
  Col,
  Nav,
} from "react-bootstrap";
import { Link } from "react-router-dom";

import Logo from "../../assets/logo.png";
import Lenshui from "../../assets/lenshui.jpg";

import "./index.css";
import Rightsea from './rightsea';
import Search from './search';
import Geren from "../../assets/geren.png";
import Fuwu from "../../assets/fuwu.png";
import Kefu from "../../assets/kefu.png";
import Che from "../../assets/che.png";
import Shop from './shop';
import Footer from "../../components/footer";
import Header from "../../components/header";



export default function Home() {
  
  return (
    <Container fluid className="constyle">
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
        <Rightsea />
        <Row className="lenshui">
          <img src={Lenshui} alt="shop" />
        </Row>
        <div className="backtop">
          <li>
            <Link to="#" className="lol">
              <div>
                <img
                  src={Geren}
                  alt="shop"
                  style={{ width: "20px", height: "20px", marginLeft: "25px" }}
                />
              </div>
              <span>个人中心</span>
            </Link>
          </li>
          <li>
            <Link to="#" className="lol">
              <div>
                <img
                  src={Fuwu}
                  alt="shop"
                  style={{ width: "20px", height: "20px", marginLeft: "25px" }}
                />
              </div>
              <span>售后服务</span>
            </Link>
          </li>
          <li>
            <Link to="#" className="lol">
              <div>
                <img
                  src={Kefu}
                  alt="shop"
                  style={{ width: "20px", height: "20px", marginLeft: "25px" }}
                />
              </div>
              <span>人工客服</span>
            </Link>
          </li>
          <li>
            <Link to="#" className="lol">
              <div>
                <img
                  src={Che}
                  alt="shop"
                  style={{ width: "20px", height: "20px", marginLeft: "25px" }}
                />
              </div>
              <span className="aa">购物车</span>
            </Link>
          </li>
        </div>
        <div>
          <Shop />
        </div>
        <Row style={{ position: "absolute", top: "1750px" }}>
          <Footer />
        </Row>
      </Container>
    </Container>
  );
}

