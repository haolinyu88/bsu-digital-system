module light(
    input downStairs, upStairs,
    output stair_light
);
    assign stair_light = downStairs ^ upStairs;
endmodule
