import React from 'react'
import { Link } from 'react-router-dom';
import { Container, Row, Col, Card } from "react-bootstrap";

import Jian from "../../assets/jian.png";
import A1 from "../../assets/shuoji/a1.jpg";
import A2 from "../../assets/shuoji/a2.jpg";
import A3 from "../../assets/shuoji/a3.jpg";
import A4 from "../../assets/shuoji/a4.jpg";
import A5 from "../../assets/shuoji/a5.jpg";
import B1 from "../../assets/pingb/b1.jpg";
import B2 from "../../assets/pingb/b2.jpg";
import B3 from "../../assets/pingb/b3.jpg";
import B4 from "../../assets/pingb/b4.jpg";
import B5 from "../../assets/pingb/b5.jpg";


import "./shop.css"

export default function Shop() {
  return (
    <Container className="sspin">
      <Row>
        <Col xs={10} className="shopwei">
          手机
        </Col>
        <Col sx={2} className="shopwei2">
          <Link to={"/#"} style={{ textDecoration: "none" }} className="chakan">
            查看更多
            <img
              src={Jian}
              style={{ width: "1.3em", height: "1.3em", marginLeft: "1em" }}
              alt="shop"
            />
          </Link>
        </Col>
      </Row>
      <Row style={{ marginTop: "20px" }}>
        <Col xs={2} style={{ marginLeft: "30px" }}>
          <Link to={"/#"} style={{ textDecoration: "none" }}>
            <Card
              className="cardst"
              style={{ border: "none", width: "200px", height: "350px" }}
            >
              <Card.Img variant="top" src={A1} style={{ border: "none" }} />
              <Card.Body>
                <Card.Title style={{ textAlign: "center", color: "black" }}>
                  Remi 12C
                </Card.Title>
                <Card.Subtitle
                  className="mb-2 text-muted"
                  style={{
                    fontSize: "12px",
                    textAlign: "center",
                    marginTop: "20px",
                  }}
                >
                  高性能长续航，5000万像素超清双摄
                </Card.Subtitle>
                <Card.Text
                  style={{
                    position: "absolute",
                    bottom: "10px",
                    left: "65px",
                    color: "rgb(255,106,0)",
                  }}
                >
                  699元起
                </Card.Text>
              </Card.Body>
            </Card>
          </Link>
        </Col>

        <Col xs={2} style={{ marginLeft: "25px" }}>
          <Link to={"/#"} style={{ textDecoration: "none" }}>
            <Card
              className="cardst"
              style={{ border: "none", width: "200px", height: "350px" }}
            >
              <Card.Img variant="top" src={A2} style={{ border: "none" }} />
              <Card.Body>
                <Card.Title style={{ textAlign: "center", color: "black" }}>
                  Redmi K60
                </Card.Title>
                <Card.Subtitle
                  className="mb-2 text-muted"
                  style={{
                    fontSize: "12px",
                    textAlign: "center",
                    marginTop: "20px",
                  }}
                >
                  骁龙8+｜2K 高光直屏｜5500mAh+67W闪充
                </Card.Subtitle>
                <Card.Text
                  style={{
                    position: "absolute",
                    bottom: "10px",
                    left: "65px",
                    color: "rgb(255,106,0)",
                  }}
                >
                  2499元起
                </Card.Text>
              </Card.Body>
            </Card>
          </Link>
        </Col>
        <Col xs={2} style={{ marginLeft: "25px" }}>
          <Link to={"/#"} style={{ textDecoration: "none" }}>
            <Card
              className="cardst"
              style={{ border: "none", width: "200px", height: "350px" }}
            >
              <Card.Img variant="top" src={A3} style={{ border: "none" }} />
              <Card.Body>
                <Card.Title style={{ textAlign: "center", color: "black" }}>
                  Redmi K60 Pro
                </Card.Title>
                <Card.Subtitle
                  className="mb-2 text-muted"
                  style={{
                    fontSize: "12px",
                    textAlign: "center",
                    marginTop: "20px",
                  }}
                >
                  【第二代骁龙8】狂暴引擎
                </Card.Subtitle>
                <Card.Text
                  style={{
                    position: "absolute",
                    bottom: "10px",
                    left: "65px",
                    color: "rgb(255,106,0)",
                  }}
                >
                  3299元起
                </Card.Text>
              </Card.Body>
            </Card>
          </Link>
        </Col>
        <Col xs={2} style={{ marginLeft: "25px" }}>
          <Link to={"/#"} style={{ textDecoration: "none" }}>
            <Card
              className="cardst"
              style={{ border: "none", width: "200px", height: "350px" }}
            >
              <Card.Img variant="top" src={A4} style={{ border: "none" }} />
              <Card.Body>
                <Card.Title style={{ textAlign: "center", color: "black" }}>
                  Redmi Note 12 Pro 极速版
                </Card.Title>
                <Card.Subtitle
                  className="mb-2 text-muted"
                  style={{
                    fontSize: "12px",
                    textAlign: "center",
                    marginTop: "20px",
                  }}
                >
                  高通骁龙778G，OLED柔性直屏+一亿像素
                </Card.Subtitle>
                <Card.Text
                  style={{
                    position: "absolute",
                    bottom: "10px",
                    left: "65px",
                    color: "rgb(255,106,0)",
                  }}
                >
                  1699元起
                </Card.Text>
              </Card.Body>
            </Card>
          </Link>
        </Col>
        <Col xs={1} style={{ marginLeft: "25px" }}>
          <Link to={"/#"} style={{ textDecoration: "none" }}>
            <Card
              className="cardst"
              style={{ border: "none", width: "200px", height: "350px" }}
            >
              <Card.Img variant="top" src={A5} style={{ border: "none" }} />
              <Card.Body>
                <Card.Title style={{ textAlign: "center", color: "black" }}>
                  Remi 12C
                </Card.Title>
                <Card.Subtitle
                  className="mb-2 text-muted"
                  style={{
                    fontSize: "12px",
                    textAlign: "center",
                    marginTop: "20px",
                  }}
                >
                  高性能长续航，5000万像素超清双摄
                </Card.Subtitle>
                <Card.Text
                  style={{
                    position: "absolute",
                    bottom: "10px",
                    left: "65px",
                    color: "rgb(255,106,0)",
                  }}
                >
                  699元起
                </Card.Text>
              </Card.Body>
            </Card>
          </Link>
        </Col>
      </Row>

      <Row style={{ marginTop: "50px" }}>
        <Col xs={10} className="shopwei">
          笔记本 | 平板
        </Col>
        <Col sx={2} className="shopwei2">
          <Link to={"/#"} style={{ textDecoration: "none" }} className="chakan">
            查看更多
            <img
              src={Jian}
              style={{ width: "1.3em", height: "1.3em", marginLeft: "1em" }}
              alt="shop"
            />
          </Link>
        </Col>
      </Row>
      <Row style={{ marginTop: "20px" }}>
        <Col xs={2} style={{ marginLeft: "30px" }}>
          <Link to={"/#"} style={{ textDecoration: "none" }}>
            <Card
              className="cardst"
              style={{ border: "none", width: "200px", height: "350px" }}
            >
              <Card.Img variant="top" src={B1} style={{ border: "none" }} />
              <Card.Body>
                <Card.Title style={{ textAlign: "center", color: "black" }}>
                  Redmi G 游戏本 2022
                </Card.Title>
                <Card.Subtitle
                  className="mb-2 text-muted"
                  style={{
                    fontSize: "12px",
                    textAlign: "center",
                    marginTop: "20px",
                  }}
                >
                  16英寸 2.5K 165Hz 电竞大屏
                </Card.Subtitle>
                <Card.Text
                  style={{
                    position: "absolute",
                    bottom: "10px",
                    left: "65px",
                    color: "rgb(255,106,0)",
                  }}
                >
                  7499元起
                </Card.Text>
              </Card.Body>
            </Card>
          </Link>
        </Col>

        <Col xs={2} style={{ marginLeft: "25px" }}>
          <Link to={"/#"} style={{ textDecoration: "none" }}>
            <Card
              className="cardst"
              style={{ border: "none", width: "200px", height: "350px" }}
            >
              <Card.Img variant="top" src={B2} style={{ border: "none" }} />
              <Card.Body>
                <Card.Title style={{ textAlign: "center", color: "black" }}>
                  小米笔记本Pro X 14
                </Card.Title>
                <Card.Subtitle
                  className="mb-2 text-muted"
                  style={{
                    fontSize: "12px",
                    textAlign: "center",
                    marginTop: "20px",
                  }}
                >
                  高能旗舰 轻薄力作
                </Card.Subtitle>
                <Card.Text
                  style={{
                    position: "absolute",
                    bottom: "10px",
                    left: "65px",
                    color: "rgb(255,106,0)",
                  }}
                >
                  6999元起
                </Card.Text>
              </Card.Body>
            </Card>
          </Link>
        </Col>
        <Col xs={2} style={{ marginLeft: "25px" }}>
          <Link to={"/#"} style={{ textDecoration: "none" }}>
            <Card
              className="cardst"
              style={{ border: "none", width: "200px", height: "350px" }}
            >
              <Card.Img variant="top" src={B3} style={{ border: "none" }} />
              <Card.Body>
                <Card.Title style={{ textAlign: "center", color: "black" }}>
                  Redmi Book Pro 14 2022
                </Card.Title>
                <Card.Subtitle
                  className="mb-2 text-muted"
                  style={{
                    fontSize: "12px",
                    textAlign: "center",
                    marginTop: "20px",
                  }}
                >
                  全新12代英特尔处理器
                </Card.Subtitle>
                <Card.Text
                  style={{
                    position: "absolute",
                    bottom: "10px",
                    left: "65px",
                    color: "rgb(255,106,0)",
                  }}
                >
                  5399元起
                </Card.Text>
              </Card.Body>
            </Card>
          </Link>
        </Col>
        <Col xs={2} style={{ marginLeft: "25px" }}>
          <Link to={"/#"} style={{ textDecoration: "none" }}>
            <Card
              className="cardst"
              style={{ border: "none", width: "200px", height: "350px" }}
            >
              <Card.Img variant="top" src={B4} style={{ border: "none" }} />
              <Card.Body>
                <Card.Title style={{ textAlign: "center", color: "black" }}>
                  RedmiBook Pro 15 2022 锐龙版
                </Card.Title>
                <Card.Subtitle
                  className="mb-2 text-muted"
                  style={{
                    fontSize: "12px",
                    textAlign: "center",
                    marginTop: "20px",
                  }}
                >
                  可选全新锐龙7 6800H处理器
                </Card.Subtitle>
                <Card.Text
                  style={{
                    position: "absolute",
                    bottom: "10px",
                    left: "65px",
                    color: "rgb(255,106,0)",
                  }}
                >
                  5499元起
                </Card.Text>
              </Card.Body>
            </Card>
          </Link>
        </Col>
        <Col xs={1} style={{ marginLeft: "25px" }}>
          <Link to={"/#"} style={{ textDecoration: "none" }}>
            <Card
              className="cardst"
              style={{ border: "none", width: "200px", height: "350px" }}
            >
              <Card.Img variant="top" src={B5} style={{ border: "none" }} />
              <Card.Body>
                <Card.Title style={{ textAlign: "center", color: "black" }}>
                  Redmi Pad
                </Card.Title>
                <Card.Subtitle
                  className="mb-2 text-muted"
                  style={{
                    fontSize: "12px",
                    textAlign: "center",
                    marginTop: "20px",
                  }}
                >
                  入门平板，屏幕/外观/系统三大升级
                </Card.Subtitle>
                <Card.Text
                  style={{
                    position: "absolute",
                    bottom: "10px",
                    left: "65px",
                    color: "rgb(255,106,0)",
                  }}
                >
                  1199元起
                </Card.Text>
              </Card.Body>
            </Card>
          </Link>
        </Col>
      </Row>
    </Container>
  );
}
