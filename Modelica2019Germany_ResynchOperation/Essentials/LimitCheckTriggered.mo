within Modelica2019Germany_ResynchOperation.Essentials;
model LimitCheckTriggered
  "output is true if the input is within the limit during dt seconds otherwise false "
  parameter Real upperLim "in pu or in degree for angle case";
  parameter Real lowerLim "in pu or in degree for angle case";
  parameter Real dt "in sec";
  Real timer1;
  Modelica.Blocks.Logical.And and1 annotation (
    Placement(transformation(extent = {{-40, -10}, {-20, 10}})));
  Modelica.Blocks.Interfaces.RealInput u annotation (
    Placement(transformation(rotation = 0, extent = {{-110, -10}, {-90, 10}})));
  Modelica.Blocks.Interfaces.BooleanOutput START annotation (
    Placement(transformation(extent = {{100, -10}, {120, 10}})));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(threshold = lowerLim) annotation (
    Placement(transformation(extent = {{-74, 10}, {-54, 30}})));
  Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold(threshold = upperLim) annotation (
    Placement(transformation(extent = {{-74, -30}, {-54, -10}})));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold1(threshold = dt) annotation (
    Placement(transformation(extent = {{62, -10}, {82, 10}})));
  Modelica.Blocks.Logical.Pre pre2 annotation (
    Placement(transformation(extent = {{24, -10}, {44, 10}})));
  Modelica.Blocks.Interfaces.BooleanInput start_synch annotation (
    Placement(transformation(extent = {{-12, -12}, {12, 12}}, rotation = 0, origin = {-100, -68}), iconTransformation(extent = {{-20, -20}, {20, 20}}, rotation = 90, origin = {-2, -100})));
  Modelica.Blocks.Logical.And and2 annotation (
    Placement(transformation(extent = {{-10, -10}, {10, 10}})));
equation
  if and2.y == true then
    der(timer1) = 1;
  else
    der(timer1) = 0;
  end if;
  when change(and2.y) and timer1 < dt or change(start_synch) then
    //pre(and1.y)==false and and1.y ==true then
    reinit(timer1, 0);
  end when;
  timer1 = greaterEqualThreshold1.u;
  connect(greaterEqualThreshold.y, and1.u1) annotation (
    Line(points = {{-53, 20}, {-48, 20}, {-48, 0}, {-42, 0}}, color = {255, 0, 255}));
  connect(u, greaterEqualThreshold.u) annotation (
    Line(points = {{-100, 0}, {-80, 0}, {-80, 20}, {-76, 20}}, color = {0, 0, 127}));
  connect(lessEqualThreshold.y, and1.u2) annotation (
    Line(points = {{-53, -20}, {-48, -20}, {-48, -8}, {-42, -8}}, color = {255, 0, 255}));
  connect(lessEqualThreshold.u, greaterEqualThreshold.u) annotation (
    Line(points = {{-76, -20}, {-80, -20}, {-80, 20}, {-76, 20}}, color = {0, 0, 127}));
  connect(greaterEqualThreshold1.y, START) annotation (
    Line(points = {{83, 0}, {110, 0}}, color = {255, 0, 255}));
  connect(start_synch, and2.u2) annotation (
    Line(points = {{-100, -68}, {-18, -68}, {-18, -8}, {-12, -8}}, color = {255, 0, 255}));
  connect(and2.u1, and1.y) annotation (
    Line(points = {{-12, 0}, {-16, 0}, {-19, 0}}, color = {255, 0, 255}));
  connect(pre2.u, and2.y) annotation (
    Line(points = {{22, 0}, {22, 0}, {11, 0}}, color = {255, 0, 255}));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}})),
    Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics={  Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                      FillPattern.Solid), Text(extent = {{-30, 96}, {22, 88}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, textString = "LIMIT CHECK")}));
end LimitCheckTriggered;
