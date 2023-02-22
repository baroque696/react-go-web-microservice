import { React } from "react";

import {  Route, Routes } from "react-router-dom";
import Login from './pages/login';
import Home from "./pages/home";
import Register from "./pages/register";
import Buyshop from './pages/buy';

import Cart from './pages/cart';
import Settlement from './pages/settlement';

export default function App() {
  

  return (
    <div>
      <Routes>
        <Route path="/" element={<Home />}></Route>
        <Route path="/home" element={<Home />}></Route>
        <Route path="/login" element={<Login />} />
        <Route path="/register" element={<Register />} />
        <Route path="/buy" element={<Buyshop />} />
        <Route path="/cart" element={<Cart />} />
        <Route path="/settlement" element={<Settlement />} />
      </Routes>
    </div>
  );
}
