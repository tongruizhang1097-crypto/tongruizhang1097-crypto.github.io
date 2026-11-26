---
layout: page
title: Paper–Code Alignment
description: A reusable assistant skill that finds a paper's public implementation and aligns source code with a module figure.
img: assets/img/projects/paper-figure-code-home-thumb.png
importance: 3
category: tools
related_publications: false
---

<link rel="stylesheet" href="{{ '/assets/css/academic.css' | relative_url }}">

<div class="academic-kicker">Assistant skill</div>

<p class="academic-lede">Paper–Code Alignment (论文图码对照) is a reusable assistant skill. Given a DOI, an arXiv identifier, or local paper and code files, it looks for a public implementation and, when readable source is found, builds a bidirectional alignment between that code and a module figure.</p>

<figure class="academic-project-figure">
  <img loading="lazy" decoding="async" src="{{ '/assets/img/projects/paper-figure-code-home.png' | relative_url }}" alt="Input view of the Paper–Code Alignment skill, with fields for a DOI, a repository URL, and local paper or code files">
  <figcaption>Local input view. The skill accepts a DOI or arXiv identifier, an optional repository or <code>.py</code> URL, or files already on the user's machine.</figcaption>
</figure>

## A skill, not a hosted application

The artifact on this site is the skill file. An assistant follows it in the user's own session. It does not publish a public demonstration site, and it does not call a large-language-model API. Heuristic extraction and name matching are sufficient for the alignment it produces. Files supplied by the user stay in that session.

<p><a class="academic-cv-download" href="{{ '/assets/skills/paper-figure-code/SKILL.md' | relative_url }}">Download SKILL.md</a></p>

## Finding an implementation

The skill resolves the paper from public metadata, then reads an open abstract or full text when one is available. It searches for code only after that, and it records what it tried.

A repository or source file supplied by the user comes first. Otherwise the skill harvests links from the paper, follows a short chain of pointers to an official implementation, and only then searches public code directories. A hit is kept only when it can be tied to the paper — for example by an arXiv identifier, or by a title match together with an official-implementation mark. If no readable model source is found, the skill says so. It does not invent a repository, and a bare link is not treated as having found the code until the source file itself has been read.

## Alignment

When readable source is in hand, the skill opens a two-pane view: code on the left, a module figure on the right. The divider can be dragged. The figure stays in view while the page scrolls, and a stage-explanation panel stays visible after a module is selected. Choosing a code passage or a module highlights both sides. Class and function names are matched to modules automatically. That match is labeled as automatic, and it may be incomplete.

<figure class="academic-project-figure">
  <img loading="lazy" decoding="async" src="{{ '/assets/img/projects/paper-figure-code-alignment.png' | relative_url }}" alt="Alignment view for RepVGG, with source on the left and a module figure on the right">
  <figcaption>Automatic alignment for RepVGG (Ding, Zhang, Ma, et al., CVPR 2021). The code is taken from the public <code>repvggplus.py</code>. The diagram is a heuristic sketch, not a figure from the paper.</figcaption>
</figure>

## When no public code can be shown

The skill does not open an alignment and pretend the code has been matched. It classifies the failure from the paper text, any README it could read, and whether a repository link existed but yielded no source:

- **Not open source.** The authors do not release the implementation, or they offer it only on request.
- **Coming later.** The paper says the code will be released, and no readable source is available yet.
- **Dead link.** A repository address appears, but the repository is empty, only a redirect, or the source cannot be fetched.
- **Unknown.** Public search did not find a reliable model source, and the authors do not say whether the work is open source.

The user can then paste a repository or `.py` URL, or provide local files. The module figure already built is kept, and the search resumes from the code step. A paper alone, code alone, or both together are all accepted. If only code is supplied, the figure is drawn from the classes and functions in that code and is labeled as such.

## What the diagrams are

Automatic figures are structural sketches assembled from section headings, captions, and familiar architecture families. Names and edges can be incomplete, and they are not the figures printed in the paper. When only an abstract is available, the sketch is coarser, and the skill says so. Explanations are written in Chinese unless the user asks in another language.

Place the downloaded file where the assistant loads skills, then ask it to align a paper with its implementation.
