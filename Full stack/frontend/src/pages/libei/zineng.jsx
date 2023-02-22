import React from "react";
import { useState } from "react";
import { Link } from "react-router-dom";


export default function Zineng() {
  const [hover, setHover] = useState(false);
 
  return (
    <div>
      <Link
        to={"/#"}
        className="llstyle"
        onMouseEnter={() => setHover(true)}
        onMouseLeave={() => setHover(false)}
      >
        智能 路由器
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
