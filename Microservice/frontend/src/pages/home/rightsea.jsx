import React from 'react'
import { useState, useEffect } from "react";
import { Link } from 'react-router-dom';
import axios from 'axios';
import Dianshi from '../libei/dianshi';


import "./rightsea.css"
import Caro from './caro';
import Bijiben from '../libei/bijiben';
import Chuxing from '../libei/chuxing';
import Erji from '../libei/erji';
import Jiadian from '../libei/jiadian';
import Zineng from '../libei/zineng';
import Shenghuo from '../libei/shenghuo';
import Jiankan from '../libei/jiankan';
import Dianyuan from '../libei/dianyuan';



export default function Rightsea(props) {
  const [hover, setHover] = useState(false);
 const [goodsList, setGoodsList] = useState([]);

 useEffect(() => {
   axios
     .get("http://localhost:8080/goods/shouji")
     .then((response) => {
       setGoodsList(response.data.goodsCateList);
     })
     .catch((error) => {
       console.error("请求失败", error);
     });
 }, []);
  return (
    <div>
      <div className="ctenstyle">
        <li>
          <Link
            to={"/#"}
            className="llstyle"
            onMouseEnter={() => setHover(true)}
            onMouseLeave={() => setHover(false)}
          >
            手机
          </Link>
        </li>

        <li>{<Dianshi />}</li>

        <li>{<Jiadian />}</li>

        <li>{<Bijiben />}</li>

        <li>{<Chuxing />}</li>

        <li>{<Erji />}</li>

        <li>
          <Jiankan />
        </li>

        <li>
          <Shenghuo />
        </li>

        <li>{<Zineng />}</li>

        <li>
          <Dianyuan />
        </li>
        {/**商品信息 */}
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
                    key={goods.id}
                    style={{ float: "left", width: "210px", marginTop: "25px" }}
                  >
                    <Link to={`/buy?id=${goods.id}`} className="limian">
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
      <Caro />
    </div>
  );
}
