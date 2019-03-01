within Modelica2019Germany_ResynchOperation.Network;
model Network_10MW "Lower Capacity of Turbine "
  extends Modelica.Icons.Example;
public
  Real theta_diff(start = (-B6.angle_0) + B4.angle_0);
  OpenIPSL.Electrical.Buses.Bus B1(V_0 = replaceablePowerflowdata_voltages.V1, angle_0 = replaceablePowerflowdata_voltages.A1) annotation (
    Placement(transformation(extent = {{-110, 30}, {-90, 50}})));
  OpenIPSL.Electrical.Buses.Bus B2(V_0 = replaceablePowerflowdata_voltages.V2, angle_0 = replaceablePowerflowdata_voltages.A2, V_b = 220) annotation (
    Placement(transformation(extent = {{-68, 30}, {-48, 50}})));
  OpenIPSL.Electrical.Branches.PSSE.TwoWindingTransformer T1(R = 0.001, X = 0.2, G = 0, B = 0, VNOM1 = 220, VB1 = 220, VNOM2 = 24, VB2 = 24) annotation (
    Placement(transformation(extent = {{-6, -4}, {6, 4}}, rotation = 180, origin = {-80, 40})));
  Generators.G1 G1(
    V_b=24,
    V_0=replaceablePowerflowdata_voltages.V1,
    angle_0=replaceablePowerflowdata_voltages.A1,
    P_0=replaceablePowerflowdata_machines.P1_1,
    Q_0=replaceablePowerflowdata_machines.Q1_1)
    annotation (Placement(transformation(extent={{-128,30},{-108,50}})));
  OpenIPSL.Electrical.Branches.PwLine L1(G = 0, B = 0, R = 0.001, X = 0.2, displayPF = false) annotation (
    Placement(transformation(extent = {{-50, 36}, {-38, 44}})));
  OpenIPSL.Electrical.Buses.Bus B3(V_0 = replaceablePowerflowdata_voltages.V3, angle_0 = replaceablePowerflowdata_voltages.A3, V_b = 220) annotation (
    Placement(transformation(extent = {{-32, 30}, {-12, 50}})));
  OpenIPSL.Electrical.Buses.Bus B4(V_0 = replaceablePowerflowdata_voltages.V4, angle_0 = replaceablePowerflowdata_voltages.A4, V_b = 220) annotation (
    Placement(transformation(extent = {{34, 30}, {54, 50}})));
  OpenIPSL.Electrical.Branches.PwLine L2_1(G = 0, B = 0, R = 0.0005, X = 0.1, displayPF = false) annotation (
    Placement(transformation(extent = {{4, 56}, {16, 64}})));
  OpenIPSL.Electrical.Branches.PwLine L2_2(G = 0, B = 0, R = 0.0005, X = 0.1, displayPF = false) annotation (
    Placement(transformation(extent = {{4, 16}, {16, 24}})));
  OpenIPSL.Electrical.Buses.Bus B6(V_0 = replaceablePowerflowdata_voltages.V6, angle_0 = replaceablePowerflowdata_voltages.A6, V_b = 220) annotation (
    Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {60, -24})));
  OpenIPSL.Electrical.Branches.PwLine L3(X = 0.2, G = 0, B = 0, R = 0.01, displayPF = false) annotation (
    Placement(transformation(extent = {{-7.99999, -5.00005}, {7.99999, 5}}, rotation = -90, origin = {61, 9.99999})));
  OpenIPSL.Electrical.Buses.Bus B7(V_0 = replaceablePowerflowdata_voltages.V7, angle_0 = replaceablePowerflowdata_voltages.A7) annotation (
    Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {40, -60})));
  OpenIPSL.Electrical.Branches.PSSE.TwoWindingTransformer T2(G = 0, B = 0, VNOM1 = 220, VB1 = 220, VNOM2 = 24, VB2 = 24, R = 0.005, X = 0.1) annotation (
    Placement(transformation(extent = {{-6, -4}, {6, 4}}, rotation = 270, origin = {40, -40})));
  OpenIPSL.Electrical.Loads.PSSE.Load LD2(V_b = 220, V_0 = replaceablePowerflowdata_voltages.V8, angle_0 = replaceablePowerflowdata_voltages.A8, P_0 = replaceablePowerflowdata_loads.PL8_1, Q_0 = replaceablePowerflowdata_loads.QL8_1) annotation (
    Placement(transformation(extent = {{72, -92}, {84, -80}})));
  Generators.G22_ResynchControl G22(
    V_b=24,
    V_0=replaceablePowerflowdata_voltages.V7,
    angle_0=replaceablePowerflowdata_voltages.A7,
    P_0=replaceablePowerflowdata_machines.P7_1,
    Q_0=replaceablePowerflowdata_machines.Q7_1) annotation (Placement(
        transformation(
        extent={{-16.5,-12.5},{16.5,12.5}},
        rotation=0,
        origin={25.5,-76.5})));
  inner OpenIPSL.Electrical.SystemBase SysData(S_b = 100, fn = 50) annotation (
    Placement(transformation(extent = {{-140, 100}, {-80, 120}})));
  OpenIPSL.Electrical.Loads.PSSE.Load LD1(V_b = 220, P_0 = replaceablePowerflowdata_loads.PL3_1, Q_0 = replaceablePowerflowdata_loads.QL3_1, V_0 = replaceablePowerflowdata_voltages.V3, angle_0 = replaceablePowerflowdata_voltages.A3) annotation (
    Placement(transformation(extent = {{-36, -14}, {-24, -2}})));
  Essentials.Breaker breaker1 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={60,-16})));
protected
  Modelica.Blocks.Interfaces.RealOutput V_IB annotation (
    Placement(transformation(extent = {{-3, -3}, {3, 3}}, rotation = 90, origin={11,-111})));
  Modelica.Blocks.Interfaces.RealOutput V_DN annotation (
    Placement(transformation(extent = {{-4, -4}, {4, 4}}, rotation = 90, origin={22,-110})));
public
  OpenIPSL.Electrical.Branches.PwLine L2(G = 0, B = 0, R = 0.05, X = 0.5, displayPF = false) annotation (
    Placement(transformation(extent={{-6,-6},{6,6}},                        rotation = 0, origin={76,40})));
  Essentials.Breaker breaker2 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={60,28})));
  OpenIPSL.Electrical.Buses.Bus B8(V_0 = replaceablePowerflowdata_voltages.V8, angle_0 = replaceablePowerflowdata_voltages.A8, V_b = 220) annotation (
    Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {80, -58})));
  OpenIPSL.Electrical.Branches.PwLine L4(G = 0, B = 0, R = 0.05, X = 0.5) annotation (
    Placement(transformation(extent = {{-6, -4}, {6, 4}}, rotation = -90, origin = {80, -42})));
  OpenIPSL.Electrical.Buses.Bus B5(V_0 = replaceablePowerflowdata_voltages.V5, angle_0 = replaceablePowerflowdata_voltages.A5, V_b = 220) annotation (
    Placement(transformation(extent = {{90, 30}, {110, 50}})));
  PowerFlowData.case10_0MW.Network_10MW_loads replaceablePowerflowdata_loads
    annotation (Placement(transformation(extent={{-74,102},{-54,122}})));
protected
  Modelica.Blocks.Interfaces.RealOutput theta_diff_new annotation (
    Placement(transformation(extent={{-4,-4},{4,4}},      rotation=90,  origin={-10,-82})));
public
  PowerFlowData.case10_0MW.Network_10MW_voltages
    replaceablePowerflowdata_voltages
    annotation (Placement(transformation(extent={{-4,102},{16,122}})));
  PowerFlowData.case10_0MW.Network_10MW_machines
    replaceablePowerflowdata_machines
    annotation (Placement(transformation(extent={{-40,102},{-20,122}})));
  SimulationSetUp.Event_Resynch Event_Generation(f_IB(u=B4.p.vi, u1=B4.p.vr),
      f_DN(u=B6.p.vi, u1=B6.p.vr)) annotation (Placement(transformation(
          rotation=0, extent={{-20,-32},{2,-12}})));
  OpenIPSL.Electrical.Loads.PSSE.Load load(V_b = 220, V_0 = replaceablePowerflowdata_voltages.V5, angle_0 = replaceablePowerflowdata_voltages.A5, P_0 = replaceablePowerflowdata_loads.PL5_1, Q_0 = replaceablePowerflowdata_loads.QL5_1) annotation (
    Placement(transformation(extent = {{118, 6}, {128, 16}})));
equation
  V_IB = B4.V;
  V_DN = B6.V;
  theta_diff = (-B6.angle) + B4.angle;
  theta_diff_new = homotopy(actual = smooth(0, noEvent(if theta_diff > 180 then theta_diff - 360 else if theta_diff < (-180) then theta_diff + 360 else theta_diff)), simplified = theta_diff);
  connect(T1.p, B2.p) annotation (
    Line(points = {{-73, 40}, {-58, 40}}, color = {0, 0, 255}));
  connect(B1.p, T1.n) annotation (
    Line(points = {{-100, 40}, {-87, 40}}, color = {0, 0, 255}));
  connect(G1.conn, B1.p) annotation (
    Line(points = {{-107, 40}, {-107, 40}, {-100, 40}}, color = {0, 0, 255}));
  connect(L1.n, B3.p) annotation (
    Line(points = {{-38.6, 40}, {-38.6, 40}, {-22, 40}}, color = {0, 0, 255}));
  connect(L1.p, B2.p) annotation (
    Line(points = {{-49.4, 40}, {-58, 40}}, color = {0, 0, 255}));
  connect(L2_2.n, B4.p) annotation (
    Line(points = {{15.4, 20}, {36, 20}, {36, 40}, {44, 40}}, color = {0, 0, 255}));
  connect(L2_1.n, B4.p) annotation (
    Line(points = {{15.4, 60}, {36, 60}, {36, 40}, {44, 40}}, color = {0, 0, 255}));
  connect(L2_1.p, B3.p) annotation (
    Line(points = {{4.6, 60}, {4.6, 60}, {-16, 60}, {-16, 40}, {-22, 40}}, color = {0, 0, 255}));
  connect(L2_2.p, B3.p) annotation (
    Line(points = {{4.6, 20}, {-16, 20}, {-16, 40}, {-22, 40}}, color = {0, 0, 255}));
  connect(T2.p, B6.p) annotation (
    Line(points = {{40, -33}, {40, -28}, {60, -28}, {60, -24}}, color = {0, 0, 255}));
  connect(T2.n, B7.p) annotation (
    Line(points = {{40, -47}, {40, -60}}, color = {0, 0, 255}));
  connect(G22.conn, B7.p) annotation (
    Line(points={{38.1923,-76.5},{40,-76.5},{40,-60}},      color = {0, 0, 255}));
  connect(LD1.p, B3.p) annotation (
    Line(points = {{-30, -2}, {-30, 40}, {-22, 40}}, color = {0, 0, 255}));
  connect(B6.p, breaker1.p) annotation (
    Line(points = {{60, -24}, {60, -20.5}}, color = {0, 0, 255}));
  connect(L2.p, B4.p) annotation (
    Line(points={{70.6,40},{70.6,40},{44,40}},        color = {0, 0, 255}));
  connect(V_DN, G22.V_DN) annotation (
    Line(points={{22,-110},{22,-92.1},{18.3923,-92.1},{18.3923,-89.25}},      color = {0, 0, 127}));
  connect(breaker2.n, B4.p) annotation (
    Line(points = {{60, 32.5}, {60, 40}, {44, 40}}, color = {0, 0, 255}));
  connect(L3.p, breaker2.p) annotation (
    Line(points={{61,17.2},{60,17.2},{60,23.5}},        color = {0, 0, 255}));
  connect(breaker1.n, L3.n) annotation (
    Line(points={{60,-11.5},{60,2.8},{61,2.8}},        color = {0, 0, 255}));
  connect(LD2.p, B8.p) annotation (
    Line(points = {{78, -80}, {80, -80}, {80, -58}}, color = {0, 0, 255}));
  connect(LD2.p, L4.n) annotation (
    Line(points = {{78, -80}, {80, -80}, {80, -47.4}}, color = {0, 0, 255}));
  connect(L4.p, B6.p) annotation (
    Line(points = {{80, -36.6}, {80, -28}, {60, -28}, {60, -24}}, color = {0, 0, 255}));
  connect(Event_Generation.y3, G22.u) annotation (
    Line(points={{-8.32308,-32.3333},{-8,-32.3333},{-8,-74.25},{11.5385,-74.25}}, color = {255, 0, 255}));
  connect(Event_Generation.y4, breaker1.TRIGGER) annotation (
    Line(points={{0.476923,-25.5},{18,-25.5},{18,-16},{55.5,-16}},      color = {255, 0, 255}));
  connect(B5.p, L2.n) annotation (
    Line(points={{100,40},{81.4,40}},                          color = {0, 0, 255}));
  connect(Event_Generation.y1, G22.f_DN) annotation (
    Line(points={{-1.72308,-15.5},{8,-15.5},{8,-81},{11.5385,-81}},              color = {0, 0, 127}));
  connect(theta_diff_new, G22.theta_diff);
  connect(G22.V_IB, V_IB) annotation (
    Line(points={{13.8231,-89.25},{14,-89.25},{14,-104},{11,-104},{11,-111}},   color = {0, 0, 127}));
  connect(Event_Generation.y2, G22.f_IB) annotation (
    Line(points={{0.307692,-21.3333},{4,-21.3333},{4,-86},{11.7923,-86},{
          11.7923,-85.25}},                                                                 color = {0, 0, 127}));
  connect(G22.TRIGGER, Event_Generation.u2) annotation (
    Line(points={{24.2308,-90.25},{24.2308,-100},{-24,-100},{-24,-22},{-18.3077,
          -22}},                                                                                color = {255, 0, 255}));
  connect(B5.p, load.p) annotation (
    Line(points = {{100, 40}, {123, 40}, {123, 16}}, color = {0, 0, 255}));
  connect(breaker2.TRIGGER, Event_Generation.y) annotation (Line(points=
         {{55.5,28},{50,28},{50,-6},{-8.66154,-6},{-8.66154,-11.5}},
        color={255,0,255}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-140, -120}, {140, 120}})),
    Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-140, -120}, {140, 120}}), graphics={  Line(points={{
              10,-78},{-10,-78},{-10,-84}},                                                                                                                    color = {28, 108, 200})}),
    experiment(StopTime=350, Interval=0.02),
    __Dymola_experimentFlags(
      Advanced(GenerateVariableDependencies=false, OutputModelicaCode=
            false),
      Evaluate=true,
      OutputCPUtime=false,
      OutputFlatModelica=false));
end Network_10MW;
