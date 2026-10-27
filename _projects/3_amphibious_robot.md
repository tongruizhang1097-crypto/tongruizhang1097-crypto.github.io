---
layout: page
title: Amphibious Robot and Visual Perception
description: Remote control, improved YOLOv8 target recognition, pruning, and edge deployment for a dual-screw-driven amphibious robot.
img: assets/img/projects/amphibious-robot.jpg
importance: 1
category: thesis
related_publications: false
---

<link rel="stylesheet" href="{{ '/assets/css/academic.css' | relative_url }}">

<div class="academic-kicker">Undergraduate thesis · Dalian Maritime University · 2024</div>

<p class="academic-lede">This thesis connects a remote-control system, a dual-screw-driven amphibious platform, an improved YOLOv8s detector, model pruning, and deployment on an edge-AI device.</p>

<figure class="academic-project-figure">
  <img src="{{ '/assets/img/projects/amphibious-robot.jpg' | relative_url }}" alt="Front view of the dual-screw-driven amphibious robot prototype">
  <figcaption>The experimental amphibious robot platform documented in the thesis.</figcaption>
</figure>

## System design

The control architecture combines onboard video capture, a Raspberry Pi, a control board, propulsion and external rotor motors, and a power-carrier board. The thesis describes remote control and visual feedback as a coordinated system rather than treating object detection as an isolated benchmark.

<figure class="academic-project-figure">
  <img src="{{ '/assets/img/projects/amphibious-system.png' | relative_url }}" alt="Hardware and signal-flow architecture of the amphibious robot control system">
  <figcaption>Hardware and signal flow documented in the thesis.</figcaption>
</figure>

## Perception and optimization

The target detector starts from YOLOv8s and evaluates deformable convolution, a CBAM attention module, and a revised IoU loss. On PASCAL VOC, the final configuration is reported to improve precision by **6.9 percentage points**, mAP@0.5 by **1.1 points**, and mAP@0.5:0.95 by **1.5 points** relative to the thesis baseline while maintaining recall.

For edge deployment, channel pruning reduces the reported parameter count from **11,126,358** to **8,936,846** and computation from **28.4G** to **22.2G**. The converted model is then deployed on a Huawei Atlas 200I DK A2 platform.

<figure class="academic-project-figure">
  <img src="{{ '/assets/img/projects/amphibious-detection.jpg' | relative_url }}" alt="Object-detection output from the deployed model identifying two bottles">
  <figcaption>Example bottle detections from the deployed system.</figcaption>
</figure>

## Classification

This work is a single-author undergraduate dissertation submitted on 20 June 2024. The document names Hongwang Du as supervisor and Zhaogui Wang as second supervisor. It is classified here as a thesis, not a peer-reviewed journal publication.

## Verification boundary and image rights

The figures above come from the author's thesis source file. Unlike the journal figures on this site, the thesis does not declare an open-content license. They are included in the local review build as author-supplied material; public deployment should proceed only after the site owner confirms permission to publish them.
