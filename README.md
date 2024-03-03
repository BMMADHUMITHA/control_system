# control_system
The problem of designing an automated steering controller is investigated in three design projects.
Initially, the control problem is considered in a simplified form.
The next step focuses on the feedback process and measurement devices
The next step investigates the effects of an accelerometer on the stability and performance of the automated steering control system.

One of the basic problems in automated steering control is a lane change maneuver as shown in Figure 1

<img width="452" alt="image" src="https://github.com/BMMADHUMITHA/control_system/assets/134037700/da02b039-7f08-429c-8489-85920c4c817c">

Measurements of the vehicle’s lateral position during the maneuver will be computed from the lateral acceleration measured by the accelerometer

<img width="311" alt="image" src="https://github.com/BMMADHUMITHA/control_system/assets/134037700/8dace60b-ff7a-494f-83b5-d0f84a17a482">

<img width="449" alt="image" src="https://github.com/BMMADHUMITHA/control_system/assets/134037700/d6192cd4-71b1-4d58-a1fc-921520a8c6bb">

<img width="464" alt="image" src="https://github.com/BMMADHUMITHA/control_system/assets/134037700/6becfe18-6f1d-4fbb-b66c-d1d361bc8c5d">

x(t): lateral position (units: lanes)
e(t): lateral position error (units: lanes)
r(t): desired lateral position (units: lanes)
u(t): steering angle (units: degrees)
d(t): wind gust disturbance (units: degrees)

The specifications on the control system design can be divided into three categories
1. Safety: The closed loop system must have less than 10 % overshoot in the unit step response.
2. Passenger comfort: The maximum steering input must be less than 4 degrees.
3. Disturbance rejection: The steady-state error for a unit disturbance must be minimized.

# DESIGN PROJECT 1

<img width="429" alt="image" src="https://github.com/BMMADHUMITHA/control_system/assets/134037700/76d4148e-16c8-475e-8ad5-470ab4a00978">

In this case, the disturbance is not included, ideal feedback of the lateral position is assumed, and the actuator dynamics are neglected. 

<img width="325" alt="image" src="https://github.com/BMMADHUMITHA/control_system/assets/134037700/6f0047fe-b61c-4eb1-91c6-9e35c2c2cc87">

# Observation
Specifically, the response becomes faster as the gain increases, but the overshoot (i.e. the potential for interference with
vehicles in other lanes) and the steering input increase as well. we must balance these competing objectives in their selection of the gain

# DESIGN PROJECT 2:
The second project builds upon the results on the first design project. In particular, the ideal feedback (measurement of position) is replaced by accelerometer feedback. Using the control gain determined in design project # 1, the effect of the accelerometer is investigated by observing the response of the closed loop system.

<img width="273" alt="image" src="https://github.com/BMMADHUMITHA/control_system/assets/134037700/90babe37-6e47-4cd6-8004-6d81f207d694">

<img width="208" alt="image" src="https://github.com/BMMADHUMITHA/control_system/assets/134037700/c7470cf6-c437-41cd-baf3-1c58e8195656">

# Observation
the accelerometer response can be made arbitrarily fast. It is important to discuss the limitations on the accelerometer
parameters such as size, cost, and availability as well as the propagation of measurement noise into the steering and lateral
position response. The later situation can cause discomfort to the passengers and excite unmodeled dynamics.

# DESIGN PROJECT 3

<img width="281" alt="image" src="https://github.com/BMMADHUMITHA/control_system/assets/134037700/145f8fef-641b-479d-bfab-bcc3e2a80c07">

This design project builds upon the results on the first two design projects. The design of an automated steering controller is considered for the scenario presented.  The root locus techniques are used to determine the desired location of the dominant closed loop poles. This exercise demonstrates that useful information can be obtained from the root locus sketch without resorting to computer simulation. Specifically, the root locus sketch
shows that the dominant poles move towards the imaginary axis and, eventually, into the right-half plane as K increases. As a result, the specifications on the transient response and steady-state error impose conflicting requirements on the value of the control gain K. In particular, the designer must trade higher overshoot and larger maximum steering angle for reduced steady-state error

<img width="309" alt="image" src="https://github.com/BMMADHUMITHA/control_system/assets/134037700/91b1a236-86d5-41a3-9bab-7b2783776224">

Hence the system 3 with all optimal condition is at K = 2.2865

<img width="344" alt="image" src="https://github.com/BMMADHUMITHA/control_system/assets/134037700/69206a57-40df-4ff5-b1d1-935513db09c2">

<img width="340" alt="image" src="https://github.com/BMMADHUMITHA/control_system/assets/134037700/db0020cc-2bcd-4a7a-a6d0-0554cc3527cc">

<img width="342" alt="image" src="https://github.com/BMMADHUMITHA/control_system/assets/134037700/6ed8c833-697b-4d71-a735-28cfad921b90">

# Prepared By:
B M Madhumitha, Aahana Nayak, Sharanya Shetty

# Reference:
https://projectabstracts.com/matlab-projects-on-controlsystem

https://kosalmath.files.wordpress.com/2010/08/controlengineering-matlab.pdf

https://www.academia.edu/es/50820955/C%C3%A9sar_P%C3%A9rez_L%C3%B3pez_MATLAB_Control_Systems_engineering

https://repository.gctu.edu.gh/files/original/b092b075de6b17a8fc6deaaee7b76d85.pdf

https://users.auth.gr/lazarosm/An-introduction-to-ControlTheory-Applications-with-Matlab.pdf




