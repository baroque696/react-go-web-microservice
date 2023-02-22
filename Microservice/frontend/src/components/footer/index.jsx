import {React} from "react";

import { Link } from "react-router-dom";
import "./index.css"
import Liwu from "../../assets/footer/liwu.png"
import Tui from "../../assets/footer/tui.png";
import Weixiu from "../../assets/footer/weixiu.png";
import Weizi from "../../assets/footer/weizi.png";
import Wuli from "../../assets/footer/wuli.png";
import Liao from "../../assets/footer/liao.png";

export default function Footer() {
  return (
    <div>
      <div style={{ height: "50px", borderBottom: "1px solid #8a8a8a" }}>
        <ul>
          <li
            style={{
              float: "left",
              listStyle: "none",
              marginLeft: "50px",
            }}
          >
            <Link to={"/#"} className="fofo">
              <img
                src={Weixiu}
                alt="shop"
                style={{ height: "20px", width: "20px", marginRight: "5px" }}
              />
              预约维修服务<span style={{ paddingLeft: "50px" }}>|</span>
            </Link>
          </li>
          <li style={{ float: "left", listStyle: "none", marginLeft: "60px" }}>
            <Link to={"/#"} className="fofo">
              <img
                src={Wuli}
                alt="shop"
                style={{ height: "20px", width: "20px", marginRight: "5px" }}
              />
              7天无理由退货<span style={{ paddingLeft: "50px" }}>|</span>
            </Link>
          </li>
          <li style={{ float: "left", listStyle: "none", marginLeft: "60px" }}>
            <Link to={"/#"} className="fofo">
              <img
                src={Tui}
                alt="shop"
                style={{ height: "20px", width: "20px", marginRight: "5px" }}
              />
              15天免费换货
              <span style={{ paddingLeft: "50px" }}>|</span>
            </Link>
          </li>
          <li style={{ float: "left", listStyle: "none", marginLeft: "60px" }}>
            <Link to={"/#"} className="fofo">
              <img
                src={Liwu}
                alt="shop"
                style={{ height: "20px", width: "20px", marginRight: "5px" }}
              />
              满69元包邮<span style={{ paddingLeft: "50px" }}>|</span>
            </Link>
          </li>
          <li style={{ float: "left", listStyle: "none", marginLeft: "60px" }}>
            <Link to={"/#"} className="fofo">
              <img
                src={Weizi}
                alt="shop"
                style={{ height: "20px", width: "20px", marginRight: "5px" }}
              />
              1100余家售后网点
            </Link>
          </li>
        </ul>
      </div>
      <div>
        <ul style={{ marginLeft: "150px", marginTop: "40px", float: "left" }}>
          <li style={{ fontSize: "14px", listStyle: "none" }}>选购指南</li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "20px",
            }}
          >
            手机
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            电视
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            笔记本
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            平板
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            穿戴
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            耳机
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            家电
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            路由器
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            音箱
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            配件
          </li>
        </ul>
        <ul style={{ marginLeft: "60px", marginTop: "40px", float: "left" }}>
          <li style={{ fontSize: "14px", listStyle: "none" }}>服务中心</li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "20px",
            }}
          >
            申请售后
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            售后政策
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            维修服务价格
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            订单查询
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            以旧换新
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            保障服务
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            防伪查询
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            F码通道
          </li>
        </ul>
        <ul style={{ marginLeft: "60px", marginTop: "40px", float: "left" }}>
          <li style={{ fontSize: "14px", listStyle: "none" }}>线下门店</li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "20px",
            }}
          >
            小米之家
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            服务网点
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            授权体验店/专区
          </li>
        </ul>
        <ul style={{ marginLeft: "60px", marginTop: "40px", float: "left" }}>
          <li style={{ fontSize: "14px", listStyle: "none" }}>关于小米</li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "20px",
            }}
          >
            了解小米
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            加入小米
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            投资者关系
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            环境，社会及管制
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            廉洁举报
          </li>
        </ul>
        <ul style={{ marginLeft: "60px", marginTop: "40px", float: "left" }}>
          <li style={{ fontSize: "14px", listStyle: "none" }}>关于我们</li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "20px",
            }}
          >
            新浪微博
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            官方微信
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            联系我们
          </li>
          <li
            style={{
              fontSize: "12px",
              listStyle: "none",
              color: "#8a8a8a",
              marginTop: "10px",
            }}
          >
            公益基金会
          </li>
        </ul>
        <ul style={{ marginLeft: "70px", marginTop: "40px", float: "left" }}>
          <li style={{ color: "#FF6700", fontSize: "20px", listStyle: "none" }}>
            400-100-5678
          </li>
          <li style={{ color: "#616161", fontSize: "12px", listStyle: "none" }}>
            8:00-18:00（仅收市话费）
          </li>
          <li
            style={{
              height: "40px",
              lineHeight: "40px",
              color: "#FF6700",
              fontSize: "12px",
              listStyle: "none",
              border: "1px solid",
              textAlign: "center",
            }}
          >
            <Link
              to={"/#"}
              style={{ textDecoration: "none", color: "#FF6700" }}
            >
              <img
                src={Liao}
                alt="shop"
                style={{ width: "20px", height: "20px" }}
              />
              人工客服
            </Link>
          </li>
        </ul>
      </div>
    </div>
  );
}