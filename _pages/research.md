---
layout: page
title: research
permalink: /research/
description: Current doctoral interests and source-verified completed research by Tongrui Zhang.
nav: true
nav_order: 1
---

<link rel="stylesheet" href="{{ '/assets/css/academic.css' | relative_url }}">

<div class="academic-kicker">Research map</div>

<p class="academic-lede">My doctoral research explores the perception-to-navigation pipeline for embodied intelligent systems: how a robot observes its surroundings, forms a stable spatial representation, localizes itself, associates observations with maps, and uses that understanding to move reliably.</p>

## Current research interests

<div class="academic-grid">
  <div class="academic-card"><h3>Perception for embodied systems</h3><p>Learning visual and multimodal representations that remain informative under dynamic scenes, incomplete observations, and resource-constrained deployment.</p></div>
  <div class="academic-card"><h3>Localization and spatial memory</h3><p>Combining geometry, temporal evidence, and learned features to recognize places and maintain consistent spatial context.</p></div>
  <div class="academic-card"><h3>Uncertainty-aware sensor fusion</h3><p>Integrating heterogeneous observations while accounting for ambiguity, changing reliability, and disagreement between sensing channels.</p></div>
  <div class="academic-card"><h3>Visual navigation and map intelligence</h3><p>Connecting perception, localization, map matching, and route-level reasoning for robust mobile-robot navigation.</p></div>
</div>

<p>My long-term goal is to develop spatial-intelligence methods that are robust in real environments, interpretable, and efficient enough to deploy.</p>

## Completed research record

### High-dimensional radar perception

The 2023 <em>Sensors</em> paper introduced 3D Collapse U-Net for semantic segmentation of range–azimuth–velocity radar heatmaps. A Vision Transformer collapses the velocity dimension between the 3D encoder and 2D decoder. On the SCORP dataset, the reported mean intersection over union was **98.51 ± 0.81**, compared with **97.25 ± 1.78** for convolutional collapse and **96.86 ± 0.21** for a 2D U-Net. Table 1 reports parameter sizes of **169.58 MB** and **210.57 MB** for the Transformer and convolutional-collapse variants, respectively, corresponding to a **19.5% reduction**.

The paper's author-contribution statement assigns methodology, software, investigation, data curation, original drafting, and visualization to Tongrui Zhang; conceptualization was shared with Yunsheng Fan.

### Battery state estimation, fault diagnosis, and remaining-life prediction

Four journal studies examine complementary problems in lithium-ion battery health management:

- A temperature-aware state-of-charge estimator that identifies Thevenin-model parameters with forgetting-factor recursive least squares and applies a truncated-singular-value-decomposition cubature Kalman filter. The publisher record reports validation at **5 °C, 25 °C, and 40 °C**.
- An online least-squares support vector machine for progressive fault diagnosis, incorporating confidence intervals to reduce false alarms and handle small, continuously arriving nonlinear data.
- A chaotic time-series formulation for remaining useful life prediction, using mutual information, Cao's method, maximum Lyapunov exponents, phase-space reconstruction, and an SVM. The cross-battery B0018 experiment reports **R² = 0.89** and **RMSE = 0.58%**.
- An improved Dempster–Shafer framework that fuses WPD-CNN and extended Kalman filter evidence. Across NASA batteries B0005, B0006, and B0007, the fused model reports **R² = 0.94–0.998** and **RMSE = 0.007–0.015**.

The published contribution statements identify Tongrui Zhang as method/software lead and original-draft author on the 2025 studies, with Hao Sun providing supervision and shared validation.

### Robotics and edge AI

My amphibious robotics project developed a remote-control and target-recognition workflow for a dual-screw-driven amphibious robot. It combined a Raspberry Pi and control electronics with an improved YOLOv8s detector, model pruning, and deployment on a Huawei Atlas 200I DK A2 edge platform. The project evaluation reported that the improved detector raised precision by **6.9 percentage points**, mAP@0.5 by **1.1 points**, and mAP@0.5:0.95 by **1.5 points** against its YOLOv8s baseline while maintaining recall. Pruning reduced parameters from **11,126,358** to **8,936,846** and operations from **28.4G** to **22.2G**.

## Methods represented in completed work

3D convolutional networks, Vision Transformers, YOLOv8, support vector machines, phase-space reconstruction, wavelet-packet CNNs, Kalman filtering, Dempster–Shafer evidence fusion, ROS-oriented control, model pruning, and edge deployment.
