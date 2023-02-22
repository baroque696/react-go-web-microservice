import React from "react";
import { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import axios from "axios";
import "./gong.css"

export default function Bijiben() {
  const [hover, setHover] = useState(false);
  const [goodsList, setGoodsList] = useState([]);
  useEffect(() => {
    axios
      .get("http://localhost:8080/goods/bijiben")
      .then((response) => {
        setGoodsList(response.data.goodsCateList);
      })
      .catch((error) => {
        console.error("请求失败", error);
      });
  }, []);
  return (
    <div>
      <Link
        to={"/#"}
        className="llstyle"
        onMouseEnter={() => setHover(true)}
        onMouseLeave={() => setHover(false)}
      >
        笔记本 平板
      </Link>
      {hover && (
        <div
          className="goodsinfo"
          onMouseEnter={() => setHover(true)}
          onMouseLeave={() => setHover(false)}
        >
          <div>
            
            <ul>
              {goodsList.map((goods) => (
                <li
                  key={goods.title}
                  style={{ float: "left", width: "210px", marginTop: "25px" }}
                >
                  <Link to={"/#"} className="limian">
                    <img
                      src={`http://localhost:8080/${goods.goodsImg}`}
                      alt={goods.title}
                    />
                    <span style={{ marginLeft: "15px" }}>{goods.title}</span>
                  </Link>
                </li>
              ))}
            </ul>
          </div>
        </div>
      )}
    </div>
  );
}
