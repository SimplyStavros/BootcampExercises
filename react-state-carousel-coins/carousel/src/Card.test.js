import React from "react";
import { render } from "@testing-library/react";
import Card from "./Card"

it("redners without crashing", function() {
    render(<Card />);
});

it("matches snapshot", function() {
    const {asFragment} = render(<Card currNum="5" totalNum="7" />);
    expect(asFragment()).toMatchSnapshot();
});