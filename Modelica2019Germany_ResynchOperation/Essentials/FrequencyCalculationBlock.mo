within Modelica2019Germany_ResynchOperation.Essentials;
model FrequencyCalculationBlock "frequency calculation for the DN"
  Modelica.Blocks.Interfaces.RealInput u annotation (
    Placement(transformation(extent = {{-120, 34}, {-80, 74}})));
  Modelica.Blocks.Interfaces.RealOutput y "O/P is in rad/sec" annotation (
    Placement(transformation(extent = {{100, -14}, {120, 6}})));
  Modelica.Blocks.Continuous.Derivative derivative annotation (
    Placement(transformation(extent = {{-56, 34}, {-36, 54}})));
  Modelica.Blocks.Math.Product product annotation (
    Placement(transformation(extent = {{-12, 16}, {10, 36}})));
  Modelica.Blocks.Math.Add add(k2 = -1) annotation (
    Placement(transformation(extent = {{30, 0}, {50, 20}})));
  Modelica.Blocks.Math.Division division annotation (
    Placement(transformation(extent = {{70, -14}, {90, 6}})));
  Modelica.Blocks.Interfaces.RealInput u1 annotation (
    Placement(transformation(extent = {{-120, -92}, {-80, -52}})));
  Modelica.Blocks.Math.Product product1 annotation (
    Placement(transformation(extent = {{-12, -10}, {10, 10}})));
  Modelica.Blocks.Math.Product product2 annotation (
    Placement(transformation(extent = {{-10, -88}, {12, -68}})));
  Modelica.Blocks.Math.Product product3 annotation (
    Placement(transformation(extent = {{-10, -54}, {12, -34}})));
  Modelica.Blocks.Math.Add add1(k1 = +1, k2 = +1) annotation (
    Placement(transformation(extent = {{30, -26}, {50, -6}})));
  Modelica.Blocks.Continuous.Derivative derivative1 annotation (
    Placement(transformation(extent = {{-54, -28}, {-34, -8}})));
equation
  connect(division.y, y) annotation (
    Line(points = {{91, -4}, {91, -4}, {110, -4}}, color = {0, 0, 127}));
  connect(product.y, add.u1) annotation (
    Line(points = {{11.1, 26}, {16, 26}, {16, 16}, {28, 16}}, color = {0, 0, 127}));
  connect(product1.y, add.u2) annotation (
    Line(points = {{11.1, 0}, {16, 0}, {16, 4}, {28, 4}}, color = {0, 0, 127}));
  connect(product3.y, add1.u1) annotation (
    Line(points = {{13.1, -44}, {17.55, -44}, {17.55, -10}, {28, -10}}, color = {0, 0, 127}));
  connect(u, derivative.u) annotation (
    Line(points = {{-100, 54}, {-100, 54}, {-70, 54}, {-70, 44}, {-58, 44}}, color = {0, 0, 127}));
  connect(derivative.y, product.u1) annotation (
    Line(points = {{-35, 44}, {-30, 44}, {-30, 32}, {-14.2, 32}}, color = {0, 0, 127}));
  connect(product.u2, u1) annotation (
    Line(points = {{-14.2, 20}, {-14.2, 20}, {-64, 20}, {-64, -72}, {-100, -72}}, color = {0, 0, 127}));
  connect(product2.u1, u1) annotation (
    Line(points = {{-12.2, -72}, {-46, -72}, {-100, -72}}, color = {0, 0, 127}));
  connect(product2.u2, u1) annotation (
    Line(points = {{-12.2, -84}, {-12.2, -84}, {-34, -84}, {-34, -72}, {-100, -72}}, color = {0, 0, 127}));
  connect(derivative1.y, product1.u2) annotation (
    Line(points = {{-33, -18}, {-26, -18}, {-26, -6}, {-14.2, -6}}, color = {0, 0, 127}));
  connect(product3.u1, derivative.u) annotation (
    Line(points = {{-12.2, -38}, {-70, -38}, {-70, 44}, {-58, 44}}, color = {0, 0, 127}));
  connect(product1.u1, derivative.u) annotation (
    Line(points = {{-14.2, 6}, {-36, 6}, {-70, 6}, {-70, 44}, {-58, 44}}, color = {0, 0, 127}));
  connect(derivative1.u, u1) annotation (
    Line(points = {{-56, -18}, {-64, -18}, {-64, -72}, {-100, -72}}, color = {0, 0, 127}));
  connect(product3.u2, derivative.u) annotation (
    Line(points = {{-12.2, -50}, {-34, -50}, {-34, -38}, {-70, -38}, {-70, 44}, {-58, 44}}, color = {0, 0, 127}));
  connect(add1.u2, product2.y) annotation (
    Line(points = {{28, -22}, {22, -22}, {22, -78}, {13.1, -78}}, color = {0, 0, 127}));
  connect(division.u2, add1.y) annotation (
    Line(points = {{68, -10}, {60, -10}, {60, -16}, {51, -16}}, color = {0, 0, 127}));
  connect(division.u1, add.y) annotation (
    Line(points = {{68, 2}, {60, 2}, {60, 10}, {51, 10}}, color = {0, 0, 127}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio = false), graphics={  Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                 FillPattern.Solid), Text(extent = {{-70, 64}, {50, -24}}, lineColor = {28, 108, 200}, textString = "FrequencyCalculationBlock")}),
    Diagram(coordinateSystem(preserveAspectRatio = false)));
end FrequencyCalculationBlock;
