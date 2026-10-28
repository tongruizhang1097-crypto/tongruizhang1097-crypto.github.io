---
layout: page
title: Battery Diagnostics and Prognostics
description: Four studies on temperature-aware state estimation, battery fault diagnosis, nonlinear degradation modeling, and evidence-fusion-based remaining-life prediction.
img: assets/img/projects/battery-testbench-thumb.webp
importance: 2
category: research
related_publications: false
---

<link rel="stylesheet" href="{{ '/assets/css/academic.css' | relative_url }}">

<div class="academic-kicker">IJES · Energies · Electronics · 2023–2025</div>

<p class="academic-lede">Four peer-reviewed studies approach battery health management from different angles: temperature-aware state-of-charge estimation, progressive fault classification, nonlinear remaining-life prediction, and reliability-aware fusion of data-driven and model-based estimators.</p>

<figure class="academic-project-figure">
  <img loading="lazy" decoding="async" src="{{ '/assets/img/projects/battery-testbench.webp' | relative_url }}" alt="Battery test system used for fault-data collection">
  <figcaption>Battery testing equipment shown in the 2023 fault-diagnosis paper (CC BY 4.0).</figcaption>
</figure>

## Temperature-aware state-of-charge estimation

The 2024 <em>International Journal of Electrochemical Science</em> paper identifies Thevenin equivalent-model parameters with forgetting-factor recursive least squares, then estimates state of charge using a cubature Kalman filter stabilized by truncated singular value decomposition. The publisher record reports simulation and experimental validation under cyclic operation at **5 °C, 25 °C, and 40 °C**, addressing temperature-dependent parameter changes rather than treating them as fixed.

## Online learning for fault diagnosis

The 2023 <em>Energies</em> paper constructs aging, overcharge, over-discharge, and normal-condition features from voltage, internal resistance, surface temperature, and capacity-related measurements. Its online least-squares support vector machine is designed for small, nonlinear, incrementally arriving fault data. Confidence intervals make gradual faults interpretable as likelihoods rather than only hard labels.

The paper's contribution statement assigns methodology and original-draft preparation to Tongrui Zhang.

## Nonlinear time-series methods for remaining-life prediction

The 2025 <em>Electronics</em> study treats battery degradation as a chaotic time series. Mutual information selects delay time; Cao's method selects embedding dimension; maximum Lyapunov exponents verify chaotic behavior; and phase-space reconstruction supplies inputs to an SVM. Using NASA B0005, B0006, B0007, and B0018 cells, the cross-battery B0018 experiment reports **R² = 0.89** and **RMSE = 0.58%**.

<figure class="academic-project-figure">
  <img loading="lazy" decoding="async" src="{{ '/assets/img/projects/battery-rul.webp' | relative_url }}" alt="Remaining-useful-life prediction curves for NASA battery B0005 at several training-set sizes">
  <figcaption>Prediction behavior as the training window expands for NASA battery B0005 (CC BY 4.0).</figcaption>
</figure>

## State estimation and evidence fusion

The 2025 <em>Energies</em> paper combines a wavelet-packet-decomposition CNN with an extended Kalman filter. Their outputs become evidence sources in an adaptively weighted Dempster–Shafer framework. On NASA cells B0005, B0006, and B0007, the fused model reports **R² = 0.94–0.998** and **RMSE = 0.007–0.015**, outperforming the individual estimators in the reported experiments.

## Tongrui Zhang's documented contribution

For both 2025 papers, the published CRediT statements identify Tongrui Zhang with conceptualization, methodology, software, formal analysis, investigation, resources, data curation, original drafting, review and editing, visualization, and project administration; validation is shared with Hao Sun, who is also listed as supervisor.

**Publications:** [temperature-aware SOC estimation](https://doi.org/10.1016/j.ijoes.2024.100515) · [fault diagnosis](https://doi.org/10.3390/en16217273) · [chaotic time series](https://doi.org/10.3390/electronics14112280) · [Dempster–Shafer fusion](https://doi.org/10.3390/en18133370)
