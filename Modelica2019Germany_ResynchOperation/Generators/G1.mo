within Modelica2019Germany_ResynchOperation.Generators;
model G1
  outer OpenIPSL.Electrical.SystemBase SysData;
  extends OpenIPSL.Electrical.Essentials.pfComponent;
  OpenIPSL.Interfaces.PwPin conn annotation (
    Placement(transformation(extent={{100,-10},{120,10}}),      iconTransformation(extent={{100,-10},
            {120,10}})));
  OpenIPSL.Electrical.Machines.PSSE.GENSAL gENROE(M_b = 100, Tpd0 = 5, Tppd0 = 0.07, Tppq0 = 0.09, H = 4.28, D = 0, Xd = 1.84, Xq = 1.75, Xpd = 0.41, Xppd = 0.2, Xl = 0.12, S10 = 0.11, S12 = 0.39, Xppq = 0.2, R_a = 0, V_b = V_b, V_0 = V_0, angle_0 = angle_0, P_0 = P_0, Q_0 = Q_0,
    SPEED(fixed=true, start=0),
    w(fixed=true, start=0))                                                                                                                                                                                                         annotation (
    Placement(transformation(extent={{-18,-20},{22,20}})));
  OpenIPSL.Electrical.Controls.PSSE.ES.SEXS sEXS(T_AT_B = 0.1, T_B = 1, K = 100, T_E = 0.1, E_MIN = -10, E_MAX = 10) annotation (
    Placement(transformation(extent={{-60,-28},{-34,-4}})));
  OpenIPSL.Electrical.Controls.PSSE.TG.HYGOV hYGOV annotation (
    Placement(transformation(extent={{-62,0},{-34,20}})));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation (
    Placement(transformation(extent={{-90,-62},{-76,-48}})));
  Modelica.Blocks.Math.Add add(k2 = +1) annotation (
    Placement(transformation(extent={{-90,14},{-76,28}})));
  Modelica.Blocks.Sources.Ramp ramp(startTime = 6, duration = 5, height = 0.0101) annotation (
    Placement(transformation(extent={{-76,-6},{-90,8}})));
equation
  connect(gENROE.p, conn) annotation (
    Line(points={{22,0},{22,0},{110,0}},                 color = {0, 0, 255}));
  connect(hYGOV.PMECH0, gENROE.PMECH0) annotation (
    Line(points={{-61.65,5},{-72,5},{-72,28},{40,28},{40,10},{24,10}},                   color = {0, 0, 127}));
  connect(hYGOV.PMECH, gENROE.PMECH) annotation (
    Line(points={{-33.3,10},{-22,10}},                            color = {0, 0, 127}));
  connect(sEXS.EFD, gENROE.EFD) annotation (
    Line(points={{-33.35,-14.6667},{-30,-14.6667},{-30,-10},{-22,-10}},      color = {0, 0, 127}));
  connect(add.u2, ramp.y) annotation (
    Line(points={{-91.4,16.8},{-96,16.8},{-96,1},{-90.7,1}},                color = {0, 0, 127}));
  connect(const.y, sEXS.VOTHSG) annotation (Line(points={{-75.3,-55},{
          -75.3,-55},{-68,-55},{-68,-8.66667},{-60,-8.66667}}, color={0,
          0,127}));
  connect(gENROE.ETERM, sEXS.ECOMP) annotation (Line(points={{24,-6},{38,-6},{
          38,-32},{-82,-32},{-82,-14.6667},{-60,-14.6667}},
        color={0,0,127}));
  connect(sEXS.EFD0, gENROE.EFD0) annotation (Line(points={{-60,-23.3333},{-86,
          -23.3333},{-86,-40},{30,-40},{30,-10},{24,-10}},
        color={0,0,127}));
  connect(add.y, hYGOV.SPEED) annotation (Line(points={{-75.3,21},{-66,
          21},{-66,15},{-61.65,15}}, color={0,0,127}));
  connect(add.u1, gENROE.SPEED) annotation (Line(points={{-91.4,25.2},{
          -96,25.2},{-96,36},{48,36},{48,14},{24,14}}, color={0,0,127}));
  connect(sEXS.VUEL, sEXS.VOTHSG) annotation (Line(points={{-55.45,-28},
          {-56,-28},{-56,-56},{-68,-56},{-68,-8.66667},{-60,-8.66667}},
        color={0,0,127}));
  connect(sEXS.VOEL, sEXS.VOTHSG) annotation (Line(points={{-51.55,-28},
          {-52,-28},{-52,-56},{-68,-56},{-68,-8.66667},{-60,-8.66667}},
        color={0,0,127}));
  connect(conn, conn)
    annotation (Line(points={{110,0},{110,0}}, color={0,0,255}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio = false), graphics={  Ellipse(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                          FillPattern.Solid), Line(points = {{-48, 2}, {-20, 56}, {2, 4}, {24, -28}, {48, 22}}, color = {0, 0, 0}, smooth = Smooth.Bezier), Text(extent = {{-52, -18}, {56, -66}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, textString = "%name")}),
    Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}})));
end G1;
