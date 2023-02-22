import React from "react";
import { useState } from "react";
import { Link } from "react-router-dom";


export default function Dianyuan() {
  const [hover, setHover] = useState(false);
  
  return (
    <div>
      <Link
        to={"/#"}
        className="llstyle"
        onMouseEnter={() => setHover(true)}
        onMouseLeave={() => setHover(false)}
      >
        电源 配件
      </Link>
      {hover && (
        <div
          className="goodsinfo"
          onMouseEnter={() => setHover(true)}
          onMouseLeave={() => setHover(false)}
        >
          <div>
            
          </div>
        </div>
      )}
    </div>
  );
}
