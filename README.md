# DC Motor Position Control Using MATLAB and Simulink

![MATLAB](https://img.shields.io/badge/MATLAB-R2026a-orange)
![Simulink](https://img.shields.io/badge/Simulink-R2026a-blue)
![PID](https://img.shields.io/badge/Control-PID-green)
![Control Systems](https://img.shields.io/badge/Domain-Control%20Systems-purple)

## 📌 Project Overview

This project implements **DC Motor Position Control using a PID Controller in MATLAB and Simulink**.

The main objective is to control the angular position of a DC motor so that the actual motor position follows a desired reference position of **1 radian**.

The project includes:

- DC motor mathematical modeling
- Closed-loop position control
- PID controller implementation
- Load-torque disturbance
- Feedback position control
- Simulink simulation
- Signal logging
- MATLAB-based performance analysis

The controller response is evaluated using important time-domain performance parameters such as **rise time, peak overshoot, settling time, and position tracking error**.

---

## 🎯 Objectives

- Model a DC motor using electrical and mechanical dynamics.
- Implement closed-loop position control using Simulink.
- Design a PID controller for position tracking.
- Track a desired angular position of **1 rad**.
- Apply an external load-torque disturbance.
- Analyze disturbance rejection.
- Log simulation data from Simulink.
- Calculate the time-domain performance of the controller.

---

## 🛠️ Tools and Technologies

- MATLAB R2026a
- Simulink
- PID Controller
- DC Motor Modeling
- Feedback Control
- Signal Logging
- Control System Analysis

---

## ⚙️ DC Motor Parameters

The DC motor model uses the following parameters:

| Parameter | Value | Unit |
|---|---:|---|
| Moment of Inertia, J | 3.2284 × 10⁻⁶ | kg·m² |
| Viscous Friction, b | 3.5077 × 10⁻⁶ | N·m·s |
| Back EMF Constant, Kb | 0.0274 | V/(rad/s) |
| Torque Constant, Kt | 0.0274 | N·m/A |
| Armature Resistance, R | 4 | Ω |
| Armature Inductance, L | 2.75 × 10⁻⁶ | H |

---

## 🎛️ PID Controller

The motor position is controlled using a PID controller.

### PID Gains

| Parameter | Value |
|---|---:|
| Kp | 1 |
| Ki | 1 |
| Kd | 0 |

The PID controller receives the position error between the desired and actual motor position and generates the control voltage required to drive the motor toward the reference position.

---

## 🔄 Control System Architecture

The implemented system follows a closed-loop feedback structure:

```text
                 Desired Position
                       │
                       ▼
                ┌─────────────┐
                │ Error Sum   │◄──────────────┐
                └──────┬──────┘               │
                       │                      │
                       ▼                      │
                ┌─────────────┐               │
                │ PID Control │               │
                └──────┬──────┘               │
                       │                      │
                       ▼                      │
                Control Voltage              │
                       │                      │
                       ▼                      │
                  ┌─────────┐                 │
                  │ DC Motor│                 │
                  └────┬────┘                 │
                       │                      │
                       ▼                      │
                Angular Position ─────────────┘
⚡ Load Torque Disturbance

A step load-torque disturbance was introduced during the simulation.

Parameter	Value
Desired Position	1 rad
Load Torque	0.0001 N·m
Disturbance Time	5 s
Simulation Time	10 s

The disturbance produces a small temporary deviation in the motor position. The feedback controller then compensates for the disturbance and brings the motor position back toward the desired reference.
