within Modelica2019Germany_ResynchOperation.Controls;
model AutomaticResynchUnit
  FreqControlUnit freq_ctrl(Kp=0.001, KI=0.001) annotation (Placement(
        transformation(rotation=0, extent={{-60,-68},{-28,-36}})));
  AngleControlUnit angle_ctrl annotation (Placement(transformation(
        rotation=0,
        extent={{-16,-16},{16,16}},
        origin={-44,4})));
  VoltageControlUnit volt_ctrl
    annotation (Placement(transformation(extent={{-64,58},{-32,90}})));
  Modelica.Blocks.Math.Add add2(k2 = -1) annotation (
    Placement(transformation(extent={{-8,40},{16,64}})));
  ActivatingUnitSequential aCT_UNIT1
    annotation (Placement(transformation(rotation=0, extent={{28,6},{64,38}})));
  Modelica.Blocks.Math.Add add1(k2 = +1, k1=+1)
                                         annotation (
    Placement(transformation(extent={{-8,-44},{16,-20}})));
  Modelica.Blocks.Logical.Switch switch1 annotation (
    Placement(transformation(extent={{82,64},{106,88}})));
  Modelica.Blocks.MathBoolean.RisingEdge rising1 annotation (
    Placement(transformation(extent={{88,24},{106,42}})));
  Modelica.Blocks.Discrete.TriggeredSampler triggeredSampler annotation (
    Placement(transformation(extent={{28,68},{48,88}})));
  Modelica.Blocks.Logical.Switch switch2 annotation (
    Placement(transformation(extent={{80,-64},{106,-38}})));
  Modelica.Blocks.Discrete.TriggeredSampler triggeredSampler1 annotation (
    Placement(transformation(extent={{11,-11},{-11,11}},      rotation = 180, origin={43,-55})));
  Modelica.Blocks.Math.Add add3(k2 = -1) annotation (
    Placement(transformation(extent={{-8,10},{16,34}})));
  Modelica.Blocks.Interfaces.RealOutput P_CTRL annotation (
    Placement(transformation(rotation = 0, extent={{120,-62},{142,-40}}),      iconTransformation(extent={{124,18},
            {144,38}})));
  Modelica.Blocks.Interfaces.RealInput V_IB annotation (
    Placement(transformation(rotation = 0, extent={{-116,74},{-84,106}}),     iconTransformation(extent = {{-100, 60}, {-80, 80}})));
  Modelica.Blocks.Interfaces.RealInput V_DN annotation (
    Placement(transformation(rotation = 0, extent={{-116,44},{-84,76}}),      iconTransformation(extent = {{-100, 20}, {-80, 40}})));
  Modelica.Blocks.Interfaces.RealOutput V_CTRL annotation (
    Placement(transformation(rotation = 0, extent={{120,66},{140,86}}),      iconTransformation(extent={{124,66},
            {144,86}})));
  Modelica.Blocks.Interfaces.BooleanOutput TRIGGER annotation (
    Placement(transformation(extent={{122,-30},{144,-8}}),     iconTransformation(extent={{124,-28},
            {144,-8}})));
  Modelica.Blocks.Interfaces.BooleanInput attempt_reconnect annotation (
    Placement(transformation(extent={{-118,8},{-82,44}}),        iconTransformation(extent = {{-100, -60}, {-82, -42}})));
  Modelica.Blocks.Interfaces.RealInput f_DN annotation (
    Placement(transformation(extent={{-120,-86},{-80,-46}}),      iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {-8, -90})));
  Modelica.Blocks.Interfaces.RealInput f_IB annotation (
    Placement(transformation(extent={{-118,-54},{-82,-18}}),       iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {56, -90})));
  Modelica.Blocks.Interfaces.RealInput theta_diff annotation (
    Placement(transformation(rotation = 0, extent={{-118,-24},{-82,12}}),     iconTransformation(extent = {{-100, -14}, {-80, 6}})));
equation
  connect(aCT_UNIT1.VOLT_DIFF,add2. y) annotation (
    Line(points={{32.1538,31.6},{22,31.6},{22,52},{17.2,52}},         color = {0, 0, 127}));
  connect(angle_ctrl.y,add1. u1) annotation (
    Line(points={{-26.72,2.72},{-16,2.72},{-16,-24.8},{-10.4,-24.8}},              color = {0, 0, 127}));
  connect(freq_ctrl.P_REF,add1. u2) annotation (
    Line(points={{-26.4,-52},{-16,-52},{-16,-39.2},{-10.4,-39.2}},          color = {0, 0, 127}));
  connect(switch2.y,P_CTRL)  annotation (
    Line(points={{107.3,-51},{131,-51}},                             color = {0, 0, 127}));
  connect(volt_ctrl.y,triggeredSampler. u) annotation (
    Line(points={{-30.4,74},{-30.4,78},{26,78}},               color = {0, 0, 127}));
  connect(attempt_reconnect,volt_ctrl. start_voltage) annotation (
    Line(points={{-100,26},{-76,26},{-76,71.28},{-62.24,71.28}},            color = {255, 0, 255}));
  connect(freq_ctrl.f_DN,f_DN)  annotation (
    Line(points={{-58.4,-50.4},{-74,-50.4},{-74,-66},{-100,-66}},          color = {0, 0, 127}));
  connect(add3.y,aCT_UNIT1. Frequency) annotation (
    Line(points={{17.2,22},{18,22},{18,22.96},{32.1538,22.96}},       color = {0, 0, 127}));
  connect(freq_ctrl.f_IB, f_IB) annotation (Line(points={{-58.4,-46.24},
          {-74,-46.24},{-74,-36},{-100,-36}}, color={0,0,127}));
  connect(theta_diff, angle_ctrl.theta_diff) annotation (Line(points={{
          -100,-6},{-76,-6},{-76,5.6},{-58.4,5.6}}, color={0,0,127}));
  connect(V_IB, volt_ctrl.u1) annotation (Line(points={{-100,90},{-78,
          90},{-78,82},{-62.4,82}}, color={0,0,127}));
  connect(V_DN, volt_ctrl.u2) annotation (Line(points={{-100,60},{-100,
          60},{-72,60},{-72,66},{-62.4,66}}, color={0,0,127}));
  connect(switch1.y, V_CTRL) annotation (Line(points={{107.2,76},{107.2,
          76},{130,76}}, color={0,0,127}));
  connect(aCT_UNIT1.theta_diff, angle_ctrl.theta_diff) annotation (Line(
        points={{32.1538,14},{18,14},{18,-8},{-24,-8},{-24,-30},{-76,-30},{-76,
          5.6},{-58.4,5.6}},           color={0,0,127}));
  connect(aCT_UNIT1.start_synch, volt_ctrl.start_voltage) annotation (
      Line(points={{45.0308,8.4},{45.0308,-4},{-24,-4},{-24,26},{-76,26},{-76,
          71.28},{-62.24,71.28}},      color={255,0,255}));
  connect(add2.u1, volt_ctrl.u1) annotation (Line(points={{-10.4,59.2},
          {-24,59.2},{-24,98},{-68,98},{-68,82},{-62.4,82}}, color={0,0,
          127}));
  connect(add3.u1, f_IB) annotation (Line(points={{-10.4,29.2},{-24,
          29.2},{-24,36},{-70,36},{-70,-42},{-74,-42},{-74,-36},{-100,
          -36}}, color={0,0,127}));
  connect(add3.u2, f_DN) annotation (Line(points={{-10.4,14.8},{-20,
          14.8},{-20,-80},{-74,-80},{-74,-66},{-100,-66}}, color={0,0,
          127}));
  connect(add2.u2, volt_ctrl.u2) annotation (Line(points={{-10.4,44.8},
          {-68,44.8},{-68,66},{-62.4,66}}, color={0,0,127}));
  connect(aCT_UNIT1.START_FREQ, freq_ctrl.TRIGGER) annotation (Line(
        points={{60.6769,29.68},{68,29.68},{68,-84},{-76,-84},{-76,-57.12},{
          -58.4,-57.12}},          color={255,0,255}));
  connect(aCT_UNIT1.start_angleControl, angle_ctrl.TRIGGER) annotation (
     Line(points={{60.6769,22.32},{64,22.32},{64,-18},{-68,-18},{-68,-1.12},{
          -58.08,-1.12}},         color={255,0,255}));
  connect(aCT_UNIT1.TRIGGER, TRIGGER) annotation (Line(points={{60.6769,14.32},
          {92,14.32},{92,-19},{133,-19}},        color={255,0,255}));
  connect(rising1.y, triggeredSampler.trigger) annotation (Line(points=
          {{107.8,33},{116,33},{116,40},{116,56},{38,56},{38,66.2}},
        color={255,0,255}));
  connect(triggeredSampler1.trigger, triggeredSampler.trigger)
    annotation (Line(points={{43,-42.02},{43,-30},{116,-30},{116,56},{
          38,56},{38,66.2}}, color={255,0,255}));
  connect(freq_ctrl.BLOCK, angle_ctrl.BLOCK) annotation (Line(points={{
          -58.4,-63.52},{-64,-63.52},{-64,-8.48},{-58.08,-8.48}}, color=
         {255,0,255}));
  connect(freq_ctrl.BLOCK, TRIGGER) annotation (Line(points={{-58.4,
          -63.52},{-64,-63.52},{-64,-74},{58,-74},{58,-22},{80,-22},{80,
          -19},{133,-19}}, color={255,0,255}));
  connect(rising1.u, TRIGGER) annotation (Line(points={{84.4,33},{78,33},
          {78,26},{86,26},{86,-19},{133,-19}}, color={255,0,255}));
  connect(triggeredSampler1.y, switch2.u1) annotation (Line(points={{
          55.1,-55},{62.55,-55},{62.55,-40.6},{77.4,-40.6}}, color={0,0,
          127}));
  connect(triggeredSampler.y, switch1.u1) annotation (Line(points={{49,
          78},{58,78},{58,85.6},{79.6,85.6}}, color={0,0,127}));
  connect(add1.y, triggeredSampler1.u) annotation (Line(points={{17.2,
          -32},{24,-32},{24,-55},{29.8,-55}}, color={0,0,127}));
  connect(switch2.u3, triggeredSampler1.u) annotation (Line(points={{
          77.4,-61.4},{62,-61.4},{62,-80},{24,-80},{24,-55},{29.8,-55}},
        color={0,0,127}));
  connect(switch1.u3, triggeredSampler.u) annotation (Line(points={{
          79.6,66.4},{60,66.4},{60,58},{20,58},{20,78},{26,78}}, color=
          {0,0,127}));
  connect(switch2.u2, TRIGGER) annotation (Line(points={{77.4,-51},{72,
          -51},{72,-19},{133,-19}}, color={255,0,255}));
  connect(switch1.u2, TRIGGER) annotation (Line(points={{79.6,76},{72,
          76},{72,-19},{133,-19}}, color={255,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={
            {-140,-100},{160,120}}), graphics={Rectangle(
          extent={{-100,120},{124,-100}},
          fillColor={0,255,128},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None,
          lineThickness=0.5,
          lineColor={0,0,255}), Rectangle(
          extent={{-100,120},{124,-100}},
          lineColor={0,0,255},
          fillColor={85,255,170},
          fillPattern=FillPattern.Solid)}), Diagram(coordinateSystem(
          preserveAspectRatio=false, extent={{-140,-100},{160,120}})));
end AutomaticResynchUnit;
