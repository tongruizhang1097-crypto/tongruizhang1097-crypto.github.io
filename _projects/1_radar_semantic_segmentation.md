---
layout: page
title: Radar Semantic Segmentation
description: 3D radar heatmap segmentation with a Vision Transformer dimension-collapse module.
img: assets/img/projects/radar-architecture-thumb.webp
importance: 1
category: research
related_publications: false
---

<link rel="stylesheet" href="{{ '/assets/css/academic.css' | relative_url }}">

<div class="academic-kicker">Sensors · 2023</div>

<p class="academic-lede">3D Collapse U-Net performs dense semantic segmentation directly on range–azimuth–velocity radar heatmaps, retaining information that is discarded when radar data are reduced to sparse point clouds.</p>

<figure class="academic-project-figure">
  <img loading="lazy" decoding="async" src="{{ '/assets/img/projects/radar-architecture.webp' | relative_url }}" alt="Architecture diagram of 3D Collapse U-Net and the Vision Transformer dimension-collapse module">
  <figcaption>3D Collapse U-Net and its Vision Transformer dimension-collapse module. Cropped from Figure 2 of the open-access paper (CC BY 4.0).</figcaption>
</figure>

## Research problem

Radar heatmaps retain richer target information than point clouds but introduce a dimensional mismatch: the encoder operates on range–azimuth–velocity volumes, whereas dense segmentation is produced in two dimensions. Direct pooling can lose velocity features, while fully connected or convolutional collapse can be expensive.

## Method

The proposed network uses 3D convolutions in a U-Net encoder and 2D convolutions in the decoder. A Vision Transformer-based module collapses the velocity dimension in skip connections by patching the high-dimensional features, adding positional information, learning global interactions, and pooling the fused representation.

## Results

On the SCORP radar dataset, the paper reports:

| Model | Parameters (MB) | MIoU |
|---|---:|---:|
| 2D U-Net | 62.07 | 96.86 ± 0.21 |
| 3D U-Net with convolutional collapse | 210.57 | 97.25 ± 1.78 |
| 3D U-Net with Vision Transformer | 169.58 | **98.51 ± 0.81** |

Table 1 gives model-specific parameter sizes of 210.57 MB for convolutional collapse and 169.58 MB for the Transformer variant. The difference is 40.99 MB, or **19.5% relative to the convolutional model**. The surrounding prose states 50% without providing a second calculation or a collapse-module-only parameter count; this website therefore uses the directly auditable tabulated result rather than the unsupported rounded claim.

## Tongrui Zhang's documented contribution

The published CRediT statement assigns methodology, software, investigation, data curation, original-draft preparation, and visualization to Tongrui Zhang. Conceptualization was shared with Yunsheng Fan; validation, formal analysis, supervision, administration, and funding acquisition are assigned to Yunsheng Fan.

**Publication:** [Zhang & Fan, <em>Sensors</em> 23 (2023), 9630](https://doi.org/10.3390/s23249630)
