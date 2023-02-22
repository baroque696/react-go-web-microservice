import { React, useState, useEffect } from "react";
import { Nav, NavItem,Container,Row,Col } from "react-bootstrap";
import { Link, NavLink} from "react-router-dom";
import shop from "../../assets/shop.png";

import "./index.css"
function Logout() {
  // 在这里删除localStorage中的数据
  localStorage.removeItem("user");
  window.location.reload();
  
  

}

export default function Header() {
  const [phone, setPhone] = useState("");
  const user = JSON.parse(localStorage.getItem("user"));
  console.log("user", user);
  
  
  useEffect(() => {
    if (user && user.phone && !phone) {
      // 在 phone 为空时才更新
      setPhone(user.phone);
    }
  }, [user,phone]);
  console.log(phone)
  return (
    <Container fluid className="headstyle">
      <Container>
        <Row>
          <Col xs={8} className="colstyle">
            <Nav>
              <NavItem>
                <Link to="https://www.mi.com/" className="linkstyle">
                  小米官网
                </Link>
                <span className="spanstyle">|</span>
              </NavItem>
              <NavItem>
                <Link to="/home" className="linkstyle">
                  小米商城
                </Link>
                <span className="spanstyle">|</span>
              </NavItem>
              <NavItem>
                <Link to="/login" className="linkstyle">
                  云服务
                </Link>
                <span className="spanstyle">|</span>
              </NavItem>
              <NavItem>
                <Link to="/login" className="linkstyle">
                  协议规则
                </Link>
                <span className="spanstyle">|</span>
              </NavItem>
              <NavItem>
                <Link to="/#" className="linkstyle">
                  APP下载
                </Link>
                <span className="spanstyle">|</span>
              </NavItem>
              <NavItem>
                <Link to="/#" className="linkstyle">
                  Select Location
                </Link>
              </NavItem>
            </Nav>
          </Col>
          <Col className="colstyle">
            <Nav>
              <NavItem>
                {phone ? (
                  <div>
                    <span style={{ color: "white" }}>欢迎，{phone}</span>
                    <NavLink
                      to="/"
                      className="linkstyle1 "
                      style={{ marginLeft: "20px" }}
                      onClick={Logout}  
                    >
                      &ensp;退出登陆
                    </NavLink>
                  </div>
                ) : (
                  <div>
                    <Link to="/login" className="linkstyle ">
                      <span>登录</span>
                    </Link>
                    <span className="spanstyle">|</span>

                    <Link to="/register" className="linkstyle ">
                      注册
                    </Link>
                    <span className="spanstyle">|</span>
                  </div>
                )}
              </NavItem>

              <NavItem>
                <NavLink to="/cart" className="linkstyle1 ">
                  <img
                    src={shop}
                    alt="shop"
                    style={{
                      height: "20px",
                      width: "20px",
                      marginLeft: "20px",
                    }}
                  />
                  &ensp;购物车
                </NavLink>
              </NavItem>
            </Nav>
          </Col>
        </Row>
      </Container>
    </Container>
  );
}