# Fixed_time_consensus
Code for TIV
The simulation environment is Matlab 2020A.
If you have any problems, please contact us: wangqipeng@nudt.edu.cn

***Note:***
*Before you start the simulation, you need to add a toolbox (FOMCOM Toolbox).
Please refer to the website： https://blog.csdn.net/m0_57154368/article/details/124181502
for adding steps.*

If you can find ***FOMCOM Toolbox*** in the list of Simulink Library Browser, you complete the adding.


Next, let us start the numerical simulation. 

## Plot Mittag-Leffler functions

Step1: Open **Plot_Mittag_Leffler.m** and run, you will get the picture in the paper. (Please wait for a minute)


## Leaderless consensus case

Step1: Open **undirect_graph_consensus.slx** and run, you will get the result of the fixed-time consensus for 4 agents.

Step2: Open **undirect_graph_average_consensus.slx** and run, you will get the result of the fixed-time average consensus for 4 agents.

Step3: Open **undirect_graph_compare_pioneer.slx** and run, you will get the result of the fixed-time consensus for 4 agents based on the conventional method.

Step4: Open **undirect_graph_compare_TBG.slx** and run, you will get the result of the fixed-time consensus for 4 agents based on the TBG method.

Step5: Follow the steps in the **Plot_paper_undirect.m**, you will get the picture in the paper.

## Comparison of different parameters

Step1: Open **undirect_graph_different_parameters.slx** and change the ***Comensurate order q*** in ***Adaptive_gain model***, you will get the result with different parameters $\beta$.

Step2: Follow the steps in the **Plot_paper_undirect_different_parameters.m**, you will get the picture in the paper.


## Leader-following consensus case
Step1: Open **direct_graph_2D_detailed_balanced.slx** and run, you will get the result of the fixed-time consensus for 3 followers and a leader under a detailed-balanced directed graph .

Step2: Open **direct_graph_2D_spanning_tree.slx** and run, you will get the result of the fixed-time consensus for 3 followers and a leader under a spanning tree.

Step3: Open **direct_graph_2D_TBG_detailed_balanced.slx** and run, you will get the result of the fixed-time consensus for 3 followers and a leader under a detailed-balanced directed graph based on the TBG method.

Step4: Open **direct_graph_2D_TBG_spanning_tree.slx** and run, you will get the result of the fixed-time consensus for 3 followers and a leader under a spanning tree based on the TBG method.

Step5: Follow the steps in the **Plot_paper_direct.m**, you will get the picture in the paper.



## Application in second-order systems

Step1: Open **undirect_graph_disturbance_second_order_switch.slx** and run, you will get the result of the fixed-time consensus for 10 agents with dynamic of second-order and under a switching topology. If you set the ***noise power*** in ***Band-Limited White Noise*** model as 0, there is no disturbance.

Step2: Open **undirect_graph_disturbance_TBG.slx** and run, you will get the result of the fixed-time consensus for 10 agents based on the TBG method.

Step3: Follow the steps in the **Plot_paper_undirect_disturbance_10_switch.m**, you will get the picture of consensus error in the paper.

Step4: Follow the steps in the **Plot_paper_undirect_disturbance_u.m**, you will get the picture of virtual input in the paper.
