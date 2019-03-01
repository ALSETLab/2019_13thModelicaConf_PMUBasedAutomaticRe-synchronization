within Modelica2019Germany_ResynchOperation.Controls;
model VoltageControlUnit
  parameter Real KP = 1 "integral gain";
  parameter Real KI = 2 "integral gain";
  Modelica.Blocks.Math.Add add(k2 = -1) annotation (
    Placement(transformation(extent = {{-70, 30}, {-50, 50}})));
  Modelica.Blocks.Logical.Switch switch1 annotation (
    Placement(transformation(extent = {{-30, -10}, {-10, 10}})));
  Modelica.Blocks.Sources.Constant const1(k = 0) annotation (
    Placement(transformation(extent = {{-100, -64}, {-84, -48}})));
  Modelica.Blocks.Interfaces.RealInput u1 annotation (
    Placement(transformation(rotation = 0, extent = {{-110, 36}, {-90, 56}}), iconTransformation(extent = {{-100, 40}, {-80, 60}})));
  Modelica.Blocks.Interfaces.RealInput u2 annotation (
    Placement(transformation(rotation = 0, extent = {{-110, -10}, {-90, 10}}), iconTransformation(extent = {{-100, -60}, {-80, -40}})));
  Modelica.Blocks.Interfaces.RealOutput y annotation (
    Placement(transformation(extent = {{100, -10}, {120, 10}})));
  Modelica.Blocks.Interfaces.BooleanInput start_voltage annotation (
    Placement(transformation(extent = {{-112, -42}, {-88, -18}}), iconTransformation(extent = {{-100, -28}, {-78, -6}})));
  Modelica.Blocks.Continuous.PI PI(k=KP, T=1/KI)
    annotation (Placement(transformation(extent={{12,-10},{32,10}})));
equation
  connect(const1.y, switch1.u3) annotation (
    Line(points = {{-83.2, -56}, {-44, -56}, {-44, -8}, {-32, -8}}, color = {0, 0, 127}));
  connect(u1, add.u1) annotation (
    Line(points = {{-100, 46}, {-72, 46}}, color = {0, 0, 127}));
  connect(u2, add.u2) annotation (
    Line(points = {{-100, 0}, {-86, 0}, {-86, 34}, {-72, 34}}, color = {0, 0, 127}));
  connect(add.y, switch1.u1) annotation (
    Line(points = {{-49, 40}, {-44, 40}, {-44, 8}, {-32, 8}}, color = {0, 0, 127}));
  connect(switch1.u2, start_voltage) annotation (
    Line(points = {{-32, 0}, {-76, 0}, {-76, -30}, {-100, -30}}, color = {255, 0, 255}));
  connect(switch1.y, PI.u)
    annotation (Line(points={{-9,0},{10,0}}, color={0,0,127}));
  connect(PI.y, y) annotation (Line(points={{33,0},{40,0},{96,0},{110,0}},
        color={0,0,127}));
  annotation (
    Icon(graphics={  Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                  FillPattern.Solid), Text(extent = {{-58, 94}, {58, 6}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, textString = "VoltageControlUnit"), Text(extent = {{74, 6}, {86, 0}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, textString = "V_REF"), Text(extent = {{-86, 58}, {-74, 54}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, textString = "V_IB"), Text(extent = {{-80, -44}, {-68, -48}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, textString = "V_DN"), Text(extent = {{-90, 0}, {-72, -6}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, textString = "start_voltage")}),
    Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}})));
end VoltageControlUnit;
