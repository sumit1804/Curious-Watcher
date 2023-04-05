import React from "react";
// Styles
import { Wrapper } from "./Button.styles";

const Button = ({ text, callback }) => (
  <Wrapper type="button" onClick={callback}>
    {text}
    <Wrapper>hello</Wrapper>
  </Wrapper>
);

export default Button;
