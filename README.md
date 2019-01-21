# PMU Based Automatic Re-synchronization Controller Model Implementation in Modelica


![Alt Text](https://github.com/ALSETLab/2019_13thModelicaConf_PMUBasedAutomaticRe-synchronization/blob/master/Example_Results/Dymola2018/Re-synchController/FigureArchitecture.png)
      

This repository contains an Automatic re-synchronization Controller Model Implementation. These Modelica-compliant models are briefly described in the following paper of the American Modelica Conference 2018:

> Biswarup Mukherjee and Luigi Vanfretti, "Modeling of PMU-Based Automatic Re-synchronization Controls for DER Generators in Power Distribution Networks using Modelica language," Proceedings of the 13th International Modelica Conference, Regensburg, Germany, March 4–6, 2019.


> Abstract: Re-synchronization is traditionally coordinated between the electric power transmission network operators and power plants in an isolated portion of the grid in order to maintain the balance between the power supply and demand. This task can be challenging when one portion of the distribution grid contains small generators having low inertia which is the case of Distributed Energy Resources (DER), such as small hydro, wind and solar power plants. As the number of DER continues to increase with the rise of renewable energy sources located at the lower voltage networks, automatic re-synchronization method that can be applied to a great number of DER are desirable. The paper describes the architecture and modeling of an automatic re-synchronization controller shown in Figure 1, which can be applied to synchronize an islanded portion of the grid by using remote measurements to drive a Distributed Energy Resource (DER) within the islanded network. The controller’s re-synchronization function uses bus frequency measurements, which are derived using bus voltage phasors and a new bus frequency computation technique that can be used during the execution of dynamic simulations. This paper also introduces a new bus-angle difference control function within the re-synchronization control system, which allows monitoring the phase angle difference between two buses so to avoid unwanted re-synchronization. The effect of the angle difference control function is evaluated using a controlled circuit breaker considering different power dispatch levels of the generator in the distribution network model. Both deterministic and stochastic load models are used to analyze the performance of the automatic re-synchronization control system. 

Keywords: Automatic re-synchronization controller; phase angle difference controller; power distribution network; synchrophasors; Modelica; OpenIPSL



- Models used in this paper will be available shortly.


## Development and contribution

The library is developed by [Biswarup Mukherjee](https://github.com/BiswarupM) and [Luigi Vanfretti](https://github.com/lvanfretti).

Contributions are welcome via pull requests.

## License - No Warranty

This Modelica package is free software and the use is completely at your own risk; it can be redistributed and/or modified under the terms of the GNU Public License version 3.

Copyright (C) 2018, Biswarup Mukherjee and Luigi Vanfretti

