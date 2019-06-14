[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.2604357.svg)](https://doi.org/10.5281/zenodo.2604357)
# PMU Based Automatic Re-synchronization Controller Model Implementation in Modelica

## Architecture of the Automatic Re-synchronization Controller
![Alt Text](https://github.com/ALSETLab/2019_13thModelicaConf_PMUBasedAutomaticRe-synchronization/blob/master/Example_Results/Dymola2018/Re-synchController/FigureArchitecture.png)    

This repository contains an Automatic re-synchronization Controller Model Implementation. These Modelica-compliant models are briefly described in the following paper of the American Modelica Conference 2018:

> Biswarup Mukherjee and Luigi Vanfretti, "Modeling of PMU-Based Automatic Re-synchronization Controls for DER Generators in Power Distribution Networks using Modelica language," Proceedings of the 13th International Modelica Conference, Regensburg, Germany, March 4–6, 2019. [http://dx.doi.org/10.3384/ecp19157607]

## Centralized Control Structure Implementation
![Alt_Text](https://github.com/ALSETLab/2019_13thModelicaConf_PMUBasedAutomaticRe-synchronization/blob/master/Example_Results/Dymola2018/Re-synchController/G22_ResynchControl.png)

## How to Simulate it?

In your favorite Modelica tool, e.g. Open Modelica, follow the steps below:
- File/Open `./package.mo`
- Under the main package `Modelica2019Germany_ResynchOperation`, Six subpackages should appear as: (1) `Controls`, (2) `Generators`, (3) `SimulationSetup`, (4) `Essentials`, (5) `PowerFlowData`, (6) `Network`. It is recommended to use the distributed version of OpenIPSL library package (version: 1.0.0) from this repository.
- Under the `Network` subpackage, go to the model `Network_10MW`; the Modelica implementation of the distribution network generator model is shown above including the Automatic Re-synchronization controller.
- Go to the `Simulation` tab of your tool, and click the `Simulate` button.
- The simulaiton results of the transmission and distribution network bus voltages should be similar to the figure shown below:

![Alt Text](https://github.com/ALSETLab/2019_13thModelicaConf_PMUBasedAutomaticRe-synchronization/blob/master/Example_Results/Dymola2018/Re-synchController/Plot_Network_10MW.png)


- You can perform similar simulations of the power system model by making your own changes using other components from the distributed package 'Modelica2019Germany_ResynchOperation.mo'.


## Development and contribution

The library is developed by [Biswarup Mukherjee](https://github.com/BiswarupM) and [Luigi Vanfretti](https://github.com/lvanfretti).

Contributions are welcome via pull requests.

## License - No Warranty

This Modelica package is free software and the use is completely at your own risk; it can be redistributed and/or modified under the terms of the GNU Public License version 3.

Copyright (C) 2019, [Biswarup Mukherjee](https://github.com/BiswarupM) and [Luigi Vanfretti](https://github.com/lvanfretti)
