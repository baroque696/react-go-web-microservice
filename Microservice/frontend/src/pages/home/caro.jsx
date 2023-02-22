import React, { useState } from "react";
import Carousel from "react-bootstrap/Carousel";
import Xiaomi from "../../assets/lunbo/xiaomi.jpg";
import Redmi from "../../assets/lunbo/redmi.jpg";
import Reshui from "../../assets/lunbo/reshui.jpg";
import Mijia from "../../assets/lunbo/mijia.jpg";
import Huiyu from "../../assets/lunbo/huiyu.jpg";
import "./caro.css";

export default function Caro() {
  const [index, setIndex] = useState(0);

  const handleSelect = (selectedIndex, e) => {
    setIndex(selectedIndex);
  };

  return (
    <div className="lunbo">
      <Carousel
        activeIndex={index}
        onSelect={handleSelect}
        prevIcon={
          <span aria-hidden="true" className="carousel-control-prev-icon" />
        }
        nextIcon={
          <span aria-hidden="true" className="carousel-control-next-icon" />
        }
      >
        <Carousel.Item>
          <img className="d-block w-100" src={Huiyu} alt="First slide" />
        </Carousel.Item>
        <Carousel.Item>
          <img className="d-block w-100" src={Xiaomi} alt="First slide" />
        </Carousel.Item>
        <Carousel.Item>
          <img className="d-block w-100" src={Reshui} alt="Second slide" />
        </Carousel.Item>
        <Carousel.Item>
          <img className="d-block w-100" src={Redmi} alt="Third slide" />
        </Carousel.Item>
        <Carousel.Item>
          <img className="d-block w-100" src={Mijia} alt="Third slide" />
        </Carousel.Item>
      </Carousel>
    </div>
  );
}
