within Modelica2019Germany_ResynchOperation.Controls;
model AngleControlUnit
  Modelica.Blocks.Interfaces.RealInput theta_diff "in degree" annotation (
    Placement(transformation(rotation = 0, extent={{-116,16},{-84,48}}),      iconTransformation(extent = {{-100, 0}, {-80, 20}})));
  Modelica.Blocks.Interfaces.RealOutput y annotation (
    Placement(transformation(extent = {{98, -18}, {118, 2}})));
  Modelica.Blocks.Logical.Switch switch1 annotation (
    Placement(transformation(extent = {{-14, -18}, {6, 2}})));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation (
    Placement(transformation(extent={{-60,-58},{-42,-40}})));
  Modelica.Blocks.Interfaces.BooleanInput TRIGGER annotation (
    Placement(transformation(extent = {{-16, -16}, {16, 16}}, rotation = 0, origin={-100,-8}),     iconTransformation(extent = {{-12, -12}, {12, 12}}, origin = {-88, -32})));
  Modelica.Blocks.Interfaces.BooleanInput BLOCK annotation (
    Placement(transformation(extent = {{-16, -16}, {16, 16}}, rotation = 0, origin={-100,-54}),    iconTransformation(extent = {{-12, -12}, {12, 12}}, origin = {-88, -78})));
  Modelica.Blocks.Logical.Xor xor annotation (
    Placement(transformation(extent={{-62,-18},{-42,2}})));
  Modelica.Blocks.Math.Gain unit_conv(k=1)   "degree to pu" annotation (
    Placement(transformation(extent = {{24, -16}, {40, 0}})));
  Modelica.Blocks.Continuous.PID PID(
    Nd=100,
    Td=20,
    Ti=5,
    k=0.000001)
    annotation (Placement(transformation(extent={{56,-18},{76,2}})));
equation
  connect(switch1.y, unit_conv.u) annotation (
    Line(points = {{7, -8}, {7, -8}, {22.4, -8}}, color = {0, 0, 127}));
  connect(xor.u2, BLOCK) annotation (
    Line(points={{-64,-16},{-72,-16},{-72,-54},{-100,-54}},          color = {255, 0, 255}));
  connect(switch1.u2, xor.y) annotation (
    Line(points={{-16,-8},{-34,-8},{-41,-8}},                     color = {255, 0, 255}));
  connect(switch1.u3, const.y) annotation (
    Line(points={{-16,-16},{-28,-16},{-28,-49},{-41.1,-49}},        color = {0, 0, 127}));
  connect(theta_diff, switch1.u1) annotation (
    Line(points={{-100,32},{-100,32},{-30,32},{-30,0},{-16,0}},           color = {0, 0, 127}));
  connect(TRIGGER, xor.u1) annotation (
    Line(points={{-100,-8},{-64,-8}},                    color = {255, 0, 255}));
  connect(unit_conv.y, PID.u) annotation (Line(points={{40.8,-8},{54,-8}},
                    color={0,0,127}));
  connect(PID.y, y) annotation (Line(points={{77,-8},{77,-8},{108,-8}},
        color={0,0,127}));
  annotation (
    Icon(graphics={  Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                  FillPattern.Solid), Text(extent = {{-84, 4}, {-70, 4}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, textString = "theta_DN"), Text(extent = {{80, -2}, {92, -8}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, textString = "P_REF"), Text(extent = {{-70, 26}, {54, 70}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, textString = "AngleControlUnit")}),
    Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}})));
end AngleControlUnit;
