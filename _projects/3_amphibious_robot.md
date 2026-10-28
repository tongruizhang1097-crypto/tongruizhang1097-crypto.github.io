---
layout: page
title: Amphibious Robot and Visual Perception
description: Remote control, improved YOLOv8 target recognition, pruning, and edge deployment for a dual-screw-driven amphibious robot.
img: assets/img/projects/amphibious-robot-thumb.webp
importance: 1
category: engineering
related_publications: false
---

<link rel="stylesheet" href="{{ '/assets/css/academic.css' | relative_url }}">

<div class="academic-kicker">Robotics and edge AI · 2024</div>

<p class="academic-lede">This project connects a remote-control system, a dual-screw-driven amphibious platform, an improved YOLOv8s detector, model pruning, and deployment on an edge-AI device.</p>

<figure class="academic-project-figure">
  <img loading="lazy" decoding="async" src="{{ '/assets/img/projects/amphibious-robot.jpg' | relative_url }}" alt="Front view of the dual-screw-driven amphibious robot prototype">
  <figcaption>The experimental amphibious robot platform developed for the project.</figcaption>
</figure>

## System design

The control architecture combines onboard video capture, a Raspberry Pi, a control board, propulsion and external rotor motors, and a power-carrier board. Remote control and visual feedback form a coordinated workflow.

<figure class="academic-project-figure">
  <img loading="lazy" decoding="async" src="{{ '/assets/img/projects/amphibious-system-fast.webp' | relative_url }}" alt="Hardware and signal-flow architecture of the amphibious robot control system">
  <figcaption>Hardware and signal flow developed for the project.</figcaption>
</figure>

## Perception and optimization

The target detector starts from YOLOv8s and evaluates deformable convolution, a CBAM attention module, and a revised IoU loss. On PASCAL VOC, the final configuration is reported to improve precision by **6.9 percentage points**, mAP@0.5 by **1.1 points**, and mAP@0.5:0.95 by **1.5 points** relative to the YOLOv8s baseline while maintaining recall.

For edge deployment, channel pruning reduces the reported parameter count from **11,126,358** to **8,936,846** and computation from **28.4G** to **22.2G**. The converted model is then deployed on a Huawei Atlas 200I DK A2 platform.

<figure class="academic-project-figure">
  <img loading="lazy" decoding="async" src="{{ '/assets/img/projects/amphibious-detection.jpg' | relative_url }}" alt="Object-detection output from the deployed model identifying two bottles">
  <figcaption>Example bottle detections from the deployed system.</figcaption>
</figure>
