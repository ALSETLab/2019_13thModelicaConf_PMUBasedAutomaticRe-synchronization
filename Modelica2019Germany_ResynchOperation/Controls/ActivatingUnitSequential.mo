within Modelica2019Germany_ResynchOperation.Controls;
model ActivatingUnitSequential
  Essentials.LimitCheckTriggered fi_limit_check(
    upperLim=10,
    lowerLim=-10,
    dt=2) annotation (Placement(transformation(extent={{-52,-62},{-32,-42}})));
  Essentials.LimitCheckTriggered v_limit_check(
    dt=5,
    upperLim=3,
    lowerLim=-3)
    annotation (Placement(transformation(extent={{-54,38},{-34,58}})));
  Essentials.LimitCheckTriggered f_limit_check(
    upperLim=0.1,
    lowerLim=-0.1,
    dt=60) annotation (Placement(transformation(extent={{-54,-8},{-34,12}})));
  Modelica.Blocks.MathBoolean.And and1(nu=3)   annotation (
    Placement(transformation(extent={{30,-38},{50,-58}})));
  Modelica.Blocks.Logical.And and3 annotation (
    Placement(transformation(extent={{28,38},{48,58}})));
  Modelica.Blocks.Logical.And and4 annotation (
    Placement(transformation(extent={{28,-8},{48,12}})));
  Modelica.Blocks.Math.Gain unit_conv(k = 1 / (2 * 3.14)) "rad/sec to pu" annotation (
    Placement(transformation(extent={{-80,-6},{-64,10}})));
  Modelica.Blocks.Interfaces.BooleanOutput START_FREQ annotation (
    Placement(transformation(rotation = 0, extent={{106,18},{126,38}}),
        iconTransformation(extent={{106,18},{126,38}})));
  Modelica.Blocks.Interfaces.RealInput VOLT_DIFF "is in pu" annotation (
    Placement(transformation(rotation = 0, extent={{-110,38},{-90,58}}),      iconTransformation(extent={{-100,30},
            {-80,50}})));
  Modelica.Blocks.Interfaces.BooleanOutput start_angleControl annotation (
    Placement(transformation(rotation = 0, extent={{106,-28},{126,-8}}),
        iconTransformation(extent={{106,-28},{126,-8}})));
  Modelica.Blocks.Interfaces.RealInput theta_diff "in degree" annotation (
    Placement(transformation(rotation = 0, extent={{-110,-62},{-90,-42}}),      iconTransformation(extent={{-100,
            -80},{-80,-60}})));
  Modelica.Blocks.Interfaces.BooleanOutput TRIGGER annotation (
    Placement(transformation(rotation = 0, extent={{106,-78},{126,-58}}),
        iconTransformation(extent={{106,-78},{126,-58}})));
  Modelica.Blocks.Interfaces.RealInput Frequency "deiation in pu" annotation (
    Placement(transformation(rotation = 0, extent={{-110,-8},{-90,12}}),       iconTransformation(extent={{-100,
            -24},{-80,-4}})));
  Modelica.Blocks.Interfaces.BooleanInput start_synch annotation (
    Placement(transformation(extent={{-20,-20},{20,20}},      rotation = 90, origin={-6,-88}),    iconTransformation(extent={{-15,-15},
            {15,15}},                                                                                                                                 rotation = 90, origin={3,-105})));
equation
  connect(VOLT_DIFF,v_limit_check. u) annotation (
    Line(points={{-100,48},{-78,48},{-54,48}},
                                           color = {0, 0, 127}));
  connect(theta_diff,fi_limit_check. u) annotation (
    Line(points={{-100,-52},{-52,-52}},                  color = {0, 0, 127}));
  connect(v_limit_check.START,and3. u1) annotation (
    Line(points={{-33,48},{-33,48},{26,48}},                  color = {255, 0, 255}));
  connect(start_synch,and3. u2) annotation (
    Line(points={{-6,-88},{-6,-88},{-6,-20},{-6,40},{26,40}},color = {255, 0, 255}));
  connect(v_limit_check.start_synch,and3. u2) annotation (
    Line(points={{-44.2,38},{-44.2,28},{14,28},{14,40},{26,40}},           color = {255, 0, 255}));
  connect(Frequency,unit_conv. u) annotation (
    Line(points={{-100,2},{-90,2},{-81.6,2}},                color = {0, 0, 127}));
  connect(unit_conv.y,f_limit_check. u) annotation (
    Line(points={{-63.2,2},{-60,2},{-54,2}},                 color = {0, 0, 127}));
  connect(and3.y, START_FREQ) annotation (Line(points={{49,48},{88,48},
          {88,28},{116,28}}, color={255,0,255}));
  connect(f_limit_check.start_synch, START_FREQ) annotation (Line(
        points={{-44.2,-8},{-44.2,-22},{58,-22},{58,28},{116,28}},
        color={255,0,255}));
  connect(f_limit_check.START, and4.u1) annotation (Line(points={{-33,2},
          {-33,2},{26,2}}, color={255,0,255}));
  connect(and4.u2, START_FREQ) annotation (Line(points={{26,-6},{12,-6},
          {12,-22},{58,-22},{58,28},{116,28}}, color={255,0,255}));
  connect(fi_limit_check.start_synch, and4.u1) annotation (Line(points=
          {{-42.2,-62},{-42.2,-70},{-26,-70},{-26,2},{26,2}}, color={
          255,0,255}));
  connect(fi_limit_check.START, and1.u[1]) annotation (Line(points={{-31,-52},{
          30,-52},{30,-52.6667}},           color={255,0,255}));
  connect(and1.u[2], START_FREQ) annotation (Line(points={{30,-48},{16,
          -48},{16,-28},{80,-28},{80,28},{116,28}}, color={255,0,255}));
  connect(and4.y, start_angleControl) annotation (Line(points={{49,2},{
          70,2},{70,-18},{116,-18}}, color={255,0,255}));
  connect(and1.u[3], start_angleControl) annotation (Line(points={{30,-43.3333},
          {22,-43.3333},{22,-34},{86,-34},{86,-18},{116,-18}},
        color={255,0,255}));
  connect(and1.y, TRIGGER) annotation (Line(points={{51.5,-48},{62,-48},
          {72,-48},{72,-68},{116,-68}}, color={255,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={
            {-120,-120},{140,80}}), graphics={Rectangle(
          extent={{-100,80},{106,-120}},
          lineColor={28,108,200},
          fillColor={170,85,255},
          fillPattern=FillPattern.Solid)}), Diagram(coordinateSystem(
          preserveAspectRatio=false, extent={{-120,-120},{140,80}})));
end ActivatingUnitSequential;
