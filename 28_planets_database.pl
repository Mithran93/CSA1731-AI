planet(mercury, rocky, 0).
planet(venus, rocky, 0).
planet(earth, rocky, 1).
planet(mars, rocky, 2).
planet(jupiter, gas_giant, 95).
% Query: ?- planet(Name, gas_giant, Moons).
% Result: Name=jupiter, Moons=95.
