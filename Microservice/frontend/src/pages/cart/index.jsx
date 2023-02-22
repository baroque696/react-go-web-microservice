import { React, useState, useEffect } from "react";
import { Container, Row, Col, CloseButton } from "react-bootstrap";
import { Link } from "react-router-dom";
import Logo from "../../assets/logo.png"
import Footer from "../../components/footer";
import "./index.css"
import axios from "axios";

export default function Cart() {
  
  

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
  //渲染数据
  const queryString = window.location.search;
  const urlParams = new URLSearchParams(queryString);
  const goodName = urlParams.get("goodname");
  console.log(goodName)
  

  const [items, setItems] = useState([]);
  const [total, setTotal] = useState(0);
  const [allSelected, setAllSelected] = useState(false);
  
   useEffect(() => {
     let source = axios.CancelToken.source();
     axios
       .post(
         "http://localhost:8080/cart",
         { goodName, phone },
         { cancelToken: source.token }
       )
       .then((response) => {
         
         console.log(response.data);
         
         const newItems = [
           {
            ...response.data,
           },
         ];
         setItems(newItems);
         updateTotal(newItems);
         checkAllSelected(newItems);
         
         
         
       })
       .catch((error) => {
         if (axios.isCancel(error)) {
           console.log("Request cancelled");
         } else {
           console.log(error);
         }
       });

     return () => {
       source.cancel("Component unmounted");
     };
   }, [goodName, phone]);
  
  
  

  

  // 处理选中商品的事件
  function handleSelectItem(index) {
    const newItems = [...items];
    newItems[index].selected = !newItems[index].selected;
    setItems(newItems);
    updateTotal(newItems);
    checkAllSelected(newItems);
  }

  // 处理全选商品的事件
  function handleSelectAll() {
    const newItems = items.map((item) => ({ ...item, selected: !allSelected }));
    setItems(newItems);
    setAllSelected(!allSelected);
    updateTotal(newItems);
  }

  // 处理更新商品数量的事件
  function handleUpdateQuantity(index, newQuantity) {
    const newItems = [...items];
    const itemToUpdate = newItems[index];
    const oldQuantity = itemToUpdate.quantity;
    itemToUpdate.quantity = newQuantity;
    setItems(newItems);
    updateTotal(
      newItems,
      total -
        itemToUpdate.price * oldQuantity +
        itemToUpdate.price * newQuantity
    );
  }

  // 处理删除商品的事件
  function handleRemoveItem(index) {
    const newItems = [...items];
    const itemToRemove = newItems.splice(index, 1)[0];
    setItems(newItems);
    updateTotal(newItems, total - itemToRemove.price * itemToRemove.quantity);
    checkAllSelected(newItems);
  }

  // 更新总价
  function updateTotal(items, newTotal) {
    if (newTotal) {
      setTotal(newTotal);
    } else {
      const selectedItems = items.filter((item) => item.selected);
      const newTotal = selectedItems.reduce(
        (total, item) => total + item.price * item.quantity,
        0
      );
      setTotal(newTotal);
    }
  }

  // 检查是否全选
  function checkAllSelected(items) {
    const allSelected = items.every((item) => item.selected);
    setAllSelected(allSelected);
  }

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
              我的购物车
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
        <Row
          style={{
            marginTop: "40px",
            height: "70px",
            lineHeight: "25px",
            paddingTop: "20px",
            backgroundColor: "white",
          }}
        >
          <Col>
            <input
              type="checkbox"
              checked={allSelected}
              onChange={handleSelectAll}
            />
            <label>全选</label>
          </Col>
          <Col>商品名称</Col>
          <Col>单价</Col>
          <Col>数量</Col>
          <Col>操作</Col>
        </Row>
        <Row style={{ backgroundColor: "white" }}>
          <ul>
            {items.map((item, index) => (
              <li
                key={item.id}
                style={{
                  listStyle: "none",
                  padding: "20px",
                  height: "100px",
                  borderTop: "1px solid rgb(204,204,204)",
                }}
              >
                <input
                  type="checkbox"
                  checked={item.selected ? "checked" : ""}
                  onChange={() => handleSelectItem(index)}
                />
                <span style={{ marginLeft: "200px" }}>
                  <img src={`http://localhost:8080/${item.image}`} alt="" />
                  {item.name}{" "}
                  <span style={{ marginLeft: "160px" }}>￥{item.price}</span>
                  <span style={{ marginLeft: "100px" }}>X</span>
                </span>

                <input
                  type="number"
                  value={item.quantity}
                  onChange={(e) =>
                    handleUpdateQuantity(index, Number(e.target.value))
                  }
                  min="1"
                  style={{
                    marginLeft: "100px",
                    width: "80px",
                    color: "rgb(255,103,0)",
                  }}
                />
                <CloseButton
                  onClick={() => handleRemoveItem(index)}
                  className="close"
                  style={{ marginLeft: "210px" }}
                ></CloseButton>
              </li>
            ))}
          </ul>
        </Row>
        <Row
          style={{
            backgroundColor: "white",
            marginTop: "20px",
            height: "50px",
            lineHeight: "50px",
          }}
        >
          <Col xs={7}></Col>
          <Col>
            <p style={{ color: "rgb(255,103,0)" }}>总价：￥{total}</p>
          </Col>
          <Col style={{ backgroundColor: "rgb(255,103,0)", height: "50px" }}>
            <Link
              to={"/settlement"}
              style={{
                fontSize: "24px",
                textDecoration: "none",
                color: "white",
              }}
            >
              <span style={{ paddingLeft: "80px" }}>去结算</span>
            </Link>
          </Col>
        </Row>
        <Row style={{ marginTop: "100px" }}>
          <Footer></Footer>
        </Row>
      </Container>
    </Container>
  );
}
