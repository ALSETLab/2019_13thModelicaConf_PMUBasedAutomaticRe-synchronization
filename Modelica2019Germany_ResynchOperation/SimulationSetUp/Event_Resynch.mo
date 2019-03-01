within Modelica2019Germany_ResynchOperation.SimulationSetUp;
model Event_Resynch
  parameter Real T = 0.010 "Start Resynch. Process";
  Modelica.Blocks.Sources.BooleanStep booleanStep(startValue = true, startTime = 6) annotation (
    Placement(transformation(extent={{-130,-92},{-110,-72}})));
  Modelica.Blocks.Logical.Timer timer annotation (
    Placement(transformation(extent={{-40,-94},{-14,-68}})));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(threshold = T) annotation (
    Placement(transformation(extent={{-2,-94},{24,-68}})));
  Modelica.Blocks.Logical.Or Or_Block annotation (Placement(
        transformation(extent={{-78,-28},{-52,-54}})));
  Modelica.Blocks.Logical.Not Not_Block annotation (Placement(
        transformation(extent={{-78,-68},{-52,-94}})));
  Modelica.Blocks.Sources.BooleanConstant booleanConstant(k = true) annotation (
    Placement(transformation(extent={{-80,-16},{-54,10}})));
  Essentials.FrequencyCalculationBlock f_IB
    annotation (Placement(transformation(extent={{-82,28},{-52,56}})));
  Essentials.FrequencyCalculationBlock f_DN
    annotation (Placement(transformation(extent={{-82,64},{-52,90}})));
  Modelica.Blocks.Interfaces.BooleanOutput y annotation (
    Placement(transformation(rotation=0,   extent={{-11,-11},{11,11}},
        origin={79,-3}), iconTransformation(
        extent={{-14,-12},{14,12}},
        rotation=90,
        origin={-6,126})));
  Modelica.Blocks.Interfaces.RealOutput y1 annotation (
    Placement(transformation(rotation = 0, extent={{68,64},{92,88}}),
        iconTransformation(extent={{62,66},{90,90}})));
  Modelica.Blocks.Interfaces.RealOutput y2 annotation (
    Placement(transformation(rotation = 0, extent={{68,30},{90,52}}),         iconTransformation(extent={{86,-4},
            {114,20}})));
  Modelica.Blocks.Interfaces.BooleanOutput y3 annotation (
    Placement(transformation(rotation=0,   extent={{-11,-11},{11,11}},
        origin={79,-81}),                                                       iconTransformation(extent={{-14,-12},
            {14,12}},
        rotation=270,
        origin={-2,-124})));
  Modelica.Blocks.Interfaces.BooleanInput u2 annotation (
    Placement(transformation(rotation = 0, extent={{-144,-42},{-116,-18}}),      iconTransformation(extent={{-134,12},
            {-106,-12}})));
  Modelica.Blocks.Interfaces.BooleanOutput y4 annotation (
    Placement(transformation(rotation = 0, extent={{68,-52},{90,-30}}),      iconTransformation(extent={{88,-54},
            {116,-30}})));
equation
  connect(timer.y, greaterEqualThreshold.u) annotation (
    Line(points={{-12.7,-81},{-4.6,-81}},                             color = {0, 0, 127}));
  connect(Not_Block.y, timer.u) annotation (Line(points={{-50.7,-81},{
          -50.7,-81},{-42.6,-81}}, color={255,0,255}));
  connect(Not_Block.u, booleanStep.y) annotation (Line(points={{-80.6,
          -81},{-80.6,-82},{-109,-82}}, color={255,0,255}));
  connect(Or_Block.u1, booleanStep.y) annotation (Line(points={{-80.6,
          -41},{-98,-41},{-98,-82},{-109,-82}}, color={255,0,255}));
  connect(y4, Or_Block.y) annotation (Line(points={{79,-41},{79,-41},{
          -50.7,-41}}, color={255,0,255}));
  connect(Or_Block.u2, u2) annotation (Line(points={{-80.6,-30.6},{
          -80.6,-30},{-108,-30},{-110,-30},{-130,-30}}, color={255,0,
          255}));
  connect(greaterEqualThreshold.y, y3)
    annotation (Line(points={{25.3,-81},{79,-81}}, color={255,0,255}));
  connect(booleanConstant.y, y) annotation (Line(points={{-52.7,-3},{
          -52.7,-3},{79,-3}}, color={255,0,255}));
  connect(f_IB.y, y2) annotation (Line(points={{-50.5,41.44},{70,41.44},
          {70,42},{74,42},{74,41},{79,41}}, color={0,0,127}));
  connect(y1, y1) annotation (Line(points={{80,76},{75.5,76},{80,76}},
        color={0,0,127}));
  connect(f_DN.y, y1) annotation (Line(points={{-50.5,76.48},{70,76.48},
          {70,76},{80,76}}, color={0,0,127}));
  annotation (
    Diagram(coordinateSystem(extent={{-140,-120},{120,120}}), graphics={
        Rectangle(
          extent={{-88,92},{-46,26}},
          lineColor={0,0,255},
          pattern=LinePattern.Dash,
          lineThickness=0.5),
        Text(
          extent={{-40,88},{58,76}},
          lineColor={0,0,255},
          pattern=LinePattern.Dash,
          lineThickness=0.5,
          textString="Transmision network frequency computation",
          fontSize=10,
          fontName="Times New Roman"),
        Text(
          extent={{-40,48},{58,48}},
          lineColor={0,0,255},
          pattern=LinePattern.Dash,
          lineThickness=0.5,
          fontSize=10,
          fontName="Times New Roman",
          textString="Distribution network frequency computation"),
        Text(
          extent={{33.5,26.5},{-33.5,-26.5}},
          lineColor={0,0,255},
          pattern=LinePattern.Dash,
          lineThickness=0.5,
          textString="Frequency computation blocks",
          fontSize=10,
          fontName="Times New Roman",
          origin={-97.5,60.5},
          rotation=90),
        Text(
          extent={{-24,8},{32,0}},
          lineColor={0,0,255},
          pattern=LinePattern.Dash,
          lineThickness=0.5,
          textString="Signal to CB1",
          fontSize=10,
          fontName="Times New Roman"),
        Text(
          extent={{-24,-32},{32,-40}},
          lineColor={0,0,255},
          pattern=LinePattern.Dash,
          lineThickness=0.5,
          fontSize=10,
          fontName="Times New Roman",
          textString="Control signal to CB2"),
        Text(
          extent={{-4,-74},{114,-56}},
          lineColor={0,0,255},
          pattern=LinePattern.Dash,
          lineThickness=0.5,
          fontSize=10,
          fontName="Times New Roman",
          textString="Start signal to
automatic re-synchronization
controller"),
        Text(
          extent={{-174,-22},{-56,-4}},
          lineColor={0,0,255},
          pattern=LinePattern.Dash,
          lineThickness=0.5,
          fontSize=10,
          fontName="Times New Roman",
          textString="Trigger signal from
re-synchronization
controller")}),
    Icon(coordinateSystem(extent={{-140,-120},{120,120}}),      graphics={                                                                                                                                            Text(extent = {{-90, 64}, {26, -36}}, lineColor = {28, 108, 200}, textString = "Event_Resynch"), Ellipse(
          extent={{-122,114},{102,-112}},
          lineColor={28,108,200},
          fillColor={85,85,255},
          fillPattern=FillPattern.Solid)}));
end Event_Resynch;
