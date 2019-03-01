within Modelica2019Germany_ResynchOperation.Controls;
model FreqControlUnit
  Modelica.Blocks.Interfaces.RealOutput P_REF annotation (
    Placement(transformation(rotation = 0, extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
  Modelica.Blocks.Logical.Switch switch1 annotation (
    Placement(transformation(extent={{4,-16},{24,4}})));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation (
    Placement(transformation(extent={{-58,-64},{-38,-44}})));
  Modelica.Blocks.Math.Gain unit_conv(k=1/(2*Modelica.Constants.pi))
                                                          annotation (
    Placement(transformation(extent={{-26,14},{-14,26}})));
  Modelica.Blocks.Logical.Xor xor annotation (
    Placement(transformation(extent={{-58,-36},{-38,-16}})));
  Modelica.Blocks.Interfaces.BooleanInput TRIGGER annotation (
    Placement(transformation(extent = {{-14, -14}, {14, 14}}, rotation = 0, origin={-94,-20}),     iconTransformation(extent = {{-100, -42}, {-80, -22}})));
  Modelica.Blocks.Interfaces.RealInput f_IB " in rad/sec" annotation (
    Placement(transformation(rotation = 0, extent={{-108,20},{-80,48}}),      iconTransformation(extent = {{-100, 26}, {-80, 46}})));
  Modelica.Blocks.Math.Add add(k2 = -1, k1 = +1) annotation (
    Placement(transformation(extent={{-58,10},{-38,30}})));
  Modelica.Blocks.Interfaces.BooleanInput BLOCK annotation (
    Placement(transformation(extent = {{-14, -14}, {14, 14}}, rotation = 0, origin={-94,-46}),     iconTransformation(extent = {{-100, -82}, {-80, -62}})));
  Modelica.Blocks.Math.Gain gain1(k = Kp) annotation (
    Placement(transformation(extent={{46,10},{62,26}})));
  Modelica.Blocks.Math.Add add1(k2 = +1) annotation (
    Placement(transformation(extent = {{72, -10}, {92, 10}})));
  Modelica.Blocks.Continuous.Integrator integrator(k = KI) annotation (
    Placement(transformation(extent={{46,-28},{62,-12}})));
  Modelica.Blocks.Interfaces.RealInput f_DN " in rad/sec" annotation (
    Placement(transformation(extent={{-108,-8},{-80,20}}),      iconTransformation(extent={{-100,0},
            {-80,20}})));
  parameter Real Kp = 3 "proportional gain";
  parameter Real KI = 6 "integral gain";
equation
  connect(const.y, switch1.u3) annotation (
    Line(points={{-37,-54},{-28,-54},{-28,-14},{2,-14}},          color = {0, 0, 127}));
  connect(xor.y, switch1.u2) annotation (
    Line(points={{-37,-26},{-34,-26},{-34,-6},{2,-6}},          color = {255, 0, 255}));
  connect(integrator.y, add1.u2) annotation (
    Line(points={{62.8,-20},{62.8,-20},{66,-20},{66,-6},{70,-6}},            color = {0, 0, 127}));
  connect(gain1.y, add1.u1) annotation (
    Line(points={{62.8,18},{66,18},{66,6},{70,6}},          color = {0, 0, 127}));
  connect(add1.y, P_REF) annotation (
    Line(points = {{93, 0}, {96, 0}, {110, 0}}, color = {0, 0, 127}));
  connect(integrator.u, gain1.u) annotation (
    Line(points={{44.4,-20},{40,-20},{40,18},{44.4,18}},          color = {0, 0, 127}));
  connect(f_IB, add.u1) annotation (
    Line(points={{-94,34},{-94,34},{-72,34},{-72,26},{-60,26}},              color = {0, 0, 127}));
  connect(xor.u2, BLOCK) annotation (
    Line(points={{-60,-34},{-72,-34},{-72,-46},{-94,-46}},           color = {255, 0, 255}));
  connect(switch1.y, gain1.u) annotation (
    Line(points={{25,-6},{32,-6},{40,-6},{40,18},{44.4,18}},                      color = {0, 0, 127}));
  connect(f_DN, add.u2) annotation (Line(points={{-94,6},{-94,6},{-72,6},
          {-72,14},{-60,14}}, color={0,0,127}));
  connect(unit_conv.y, switch1.u1) annotation (Line(points={{-13.4,20},
          {-4,20},{-4,2},{2,2}}, color={0,0,127}));
  connect(TRIGGER, xor.u1) annotation (Line(points={{-94,-20},{-72,-20},
          {-72,-26},{-60,-26}}, color={255,0,255}));
  connect(add.y, unit_conv.u) annotation (Line(points={{-37,20},{-34,20},
          {-27.2,20}}, color={0,0,127}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio = false, extent={{-100,
            -100},{100,100}}),                                                               graphics={  Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                      FillPattern.Solid), Text(extent = {{-64, 78}, {50, 38}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, textString = "Freq.ControlUnit"), Text(extent = {{78, 2}, {92, -4}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, textString = "P_REF")}),
    Diagram(coordinateSystem(preserveAspectRatio = false, extent={{-100,
            -100},{100,100}})));
end FreqControlUnit;
