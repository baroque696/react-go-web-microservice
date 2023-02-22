import axios from "axios";
import { useState, useEffect } from "react";
import Logo from "../static/upload/20230214/1676376137950781900.jpg"; 
export default function GoodsCate() {
  const [goodsList, setGoodsList] = useState([]);


  useEffect(() => {
    axios
      .get("http://localhost:8080/")
      .then((response) => {
        setGoodsList(response.data.goodsCateList);
        
      })
      .catch((error) => {
        console.error("请求失败", error);
      });
  }, []);
  

  

  return (
    <div>
      <h1>商品分类列表</h1>
      <ul>
        {goodsList.map((goods) => (
          <li key={goods.id}>
            <h2>{goods.title}</h2> 
            <img src={`../${goods.goodsImg}`} alt={goods.title} />
            <img src={Logo} ></img>
          </li>
        ))}
      </ul>
    </div>
  );
}
