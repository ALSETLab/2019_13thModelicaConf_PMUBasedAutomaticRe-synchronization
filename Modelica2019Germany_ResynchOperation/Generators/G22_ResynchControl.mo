within Modelica2019Germany_ResynchOperation.Generators;
model G22_ResynchControl
  outer OpenIPSL.Electrical.SystemBase SysData;
  extends OpenIPSL.Electrical.Essentials.pfComponent;
  OpenIPSL.Interfaces.PwPin conn annotation (
    Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
  OpenIPSL.Electrical.Machines.PSSE.GENSAL gENROE(M_b = 100, Tpd0 = 5, Tppd0 = 0.07, Tppq0 = 0.09, H = 4.28, D = 0, Xd = 1.84, Xq = 1.75, Xpd = 0.41, Xppd = 0.2, Xl = 0.12, S10 = 0.11, S12 = 0.39, Xppq = 0.2, R_a = 0, V_b = V_b, V_0 = V_0, angle_0 = angle_0, P_0 = P_0, Q_0 = Q_0) annotation (
    Placement(transformation(extent = {{26, -18}, {60, 16}})));
  OpenIPSL.Electrical.Controls.PSSE.ES.SEXS sEXS(T_AT_B = 0.2, K = 50, E_MIN = 0, E_MAX = 5, T_E = 0.01, T_B = 10) annotation (
    Placement(transformation(extent={{-18,-28},{6,-6}})));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation (
    Placement(transformation(extent={{-5,-5},{5,5}},
        rotation=0,
        origin={-95,-77})));
  Modelica.Blocks.Interfaces.RealInput V_IB annotation (
    Placement(transformation(extent={{-110,52},{-90,72}}),      iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin={-82,-102})));
  Modelica.Blocks.Interfaces.RealInput V_DN annotation (
    Placement(transformation(extent={{-110,28},{-90,48}}),      iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin={-46,-102})));
  OpenIPSL.Electrical.Controls.PSSE.TG.IEESGO iEESGO(P_MIN = 0, P_MAX = 0.11) annotation (
    Placement(transformation(extent={{-24,6},{8,20}})));
  Modelica.Blocks.Interfaces.BooleanOutput TRIGGER annotation (
    Placement(transformation(extent={{106,26},{126,46}}),     iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -110})));
  Modelica.Blocks.Interfaces.BooleanInput u annotation (
    Placement(transformation(extent={{-110,8},{-90,28}}),       iconTransformation(extent={{-110,8},
            {-90,28}})));
  Modelica.Blocks.Interfaces.RealInput f_DN annotation (
    Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 0, origin={-100,-36}),    iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = 0, origin={-100,-36})));
  Modelica.Blocks.Math.Add add(k1 = +1, k2 = -1) annotation (
    Placement(transformation(extent={{-52,40},{-36,56}})));
  Controls.AutomaticResynchUnit Reync_Unit
    annotation (Placement(transformation(extent={{-70,-16},{-46,4}})));
  Modelica.Blocks.Interfaces.RealInput f_IB annotation (
    Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 0, origin={-100,-56}),    iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = 0, origin={-98,-70})));
  Modelica.Blocks.Interfaces.RealInput theta_diff annotation (
    Placement(transformation(extent={{-110,-28},{-90,-8}}),       iconTransformation(extent={{-110,
            -16},{-90,4}})));
equation
  connect(gENROE.p, conn) annotation (
    Line(points = {{60, -1}, {60, 0}, {110, 0}}, color = {0, 0, 255}));
  connect(sEXS.EFD, gENROE.EFD) annotation (
    Line(points={{6.6,-15.7778},{9.3,-15.7778},{9.3,-9.5},{22.6,-9.5}},          color = {0, 0, 127}));
  connect(sEXS.ECOMP, gENROE.ETERM) annotation (
    Line(points={{-18,-15.7778},{-26,-15.7778},{-26,-20},{-26,-48},{82,-48},{82,
          -6.1},{61.7,-6.1}},                                                                                      color = {0, 0, 127}));
  connect(gENROE.EFD0, sEXS.EFD0) annotation (
    Line(points={{61.7,-9.5},{66,-9.5},{66,-42},{-30,-42},{-30,-23.7222},{-18,
          -23.7222}},                                                                                  color = {0, 0, 127}));
  connect(const.y, sEXS.VOEL) annotation (
    Line(points={{-89.5,-77},{-10.2,-77},{-10.2,-28}},       color = {0, 0, 127}));
  connect(sEXS.VUEL, sEXS.VOEL) annotation (
    Line(points={{-13.8,-28},{-14,-28},{-14,-36},{-10.2,-36},{-10.2,-28}},            color = {0, 0, 127}));
  connect(iEESGO.PMECH, gENROE.PMECH) annotation (
    Line(points={{9,14},{12,14},{12,7.5},{22.6,7.5}},          color = {0, 0, 127}));
  connect(f_DN, Reync_Unit.f_DN) annotation (
    Line(points={{-100,-36},{-59.44,-36},{-59.44,-15.0909}},     color = {0, 0, 127}));
  connect(Reync_Unit.V_CTRL, sEXS.VOTHSG) annotation (
    Line(points={{-48.08,8.88178e-016},{-32.5,8.88178e-016},{-32.5,-10.2778},{
          -18,-10.2778}},                                                           color = {0, 0, 127}));
  connect(Reync_Unit.TRIGGER, TRIGGER) annotation (
    Line(points={{-48.08,-8.54545},{-42,-8.54545},{-42,36},{116,36}},   color = {255, 0, 255}));
  connect(Reync_Unit.P_CTRL, add.u2) annotation (
    Line(points={{-48.08,-4.36364},{-38,-4.36364},{-38,22},{-68,22},{
          -68,43.2},{-53.6,43.2}},                                                                color = {0, 0, 127}));
  connect(u, Reync_Unit.attempt_reconnect) annotation (
    Line(points={{-100,18},{-86,18},{-86,-11.5455},{-66.08,-11.5455}},      color = {255, 0, 255}));
  connect(V_IB, Reync_Unit.V_IB) annotation (
    Line(points={{-100,62},{-100,62},{-72,62},{-72,-0.545455},{-66,
          -0.545455}},                                                           color = {0, 0, 127}));
  connect(V_DN, Reync_Unit.V_DN) annotation (
    Line(points={{-100,38},{-78,38},{-78,-4.18182},{-66,-4.18182}},    color = {0, 0, 127}));
  connect(f_IB, Reync_Unit.f_IB) annotation (
    Line(points={{-100,-56},{-70,-56},{-54.32,-56},{-54.32,-15.0909}},       color = {0, 0, 127}));
  connect(Reync_Unit.theta_diff, theta_diff) annotation (
    Line(points={{-66,-7.27273},{-78,-7.27273},{-78,-18},{-100,-18}},      color = {0, 0, 127}));
  connect(gENROE.PMECH0, iEESGO.PMECH0) annotation (
    Line(points={{61.7,7.5},{84,7.5},{84,26},{-32,26},{-32,10},{-23.2,
          10}},                                                                          color = {0, 0, 127}));
  connect(add.y, iEESGO.SPEED) annotation (
    Line(points={{-35.2,48},{-28,48},{-28,17},{-23.2,17}},          color = {0, 0, 127}));
  connect(add.u1, gENROE.SPEED) annotation (
    Line(points={{-53.6,52.8},{-68,52.8},{-68,64},{70,64},{70,10.9},{
          61.7,10.9}},                                                                         color = {0, 0, 127}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio = false, extent={{-120,
            -100},{140,100}}),                                                               graphics={  Ellipse(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                               FillPattern.Solid), Line(points = {{-48, 2}, {-20, 56}, {2, 4}, {24, -28}, {48, 22}}, color = {0, 0, 0}, smooth = Smooth.Bezier), Text(extent = {{-52, -18}, {56, -66}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, textString = "%name")}),
    Diagram(coordinateSystem(preserveAspectRatio = false, extent={{-120,
            -100},{140,100}})));
end G22_ResynchControl;
