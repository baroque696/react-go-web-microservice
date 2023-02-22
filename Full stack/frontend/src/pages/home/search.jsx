import React, { useState } from "react";
import { Form, InputGroup, Button } from "react-bootstrap";
import "./search.css"

const Search = () => {
  const [value, setValue] = useState("");

  const handleChange = (e) => {
    setValue(e.target.value);
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log(`Search value: ${value}`);
  };

  return (
    <InputGroup className="mb-3">
      <Form inline="true" onSubmit={handleSubmit}>
        <Form.Control
          type="text"
          placeholder="请输入商品"
          aria-label="Recipient's username"
          aria-describedby="basic-addon2"
          value={value}
          onChange={handleChange}
        />
        <Button
          type="submit"
          style={{ backgroundColor: "rgb(255,103,0)" }}
          variant="outline-secondary"
          id="button-addon2"
          className="ttstyle"
        >
          提交
        </Button>
      </Form>
    </InputGroup>
  );
};

export default Search;
