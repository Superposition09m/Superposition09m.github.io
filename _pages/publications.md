---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

Papers and Preprints
======

- **Layerwise Change of Knowledge in Neural Networks** [\[PDF\]](https://arxiv.org/abs/2409.08712)  
  Xu Cheng\*, Lei Cheng\*, Zhaoran Peng, **Yang Xu**, Tian Han, Quanshi Zhang.  
  *Proceedings of the 41st International Conference on Machine Learning (ICML), PMLR 235:8038-8059, 2024.*

- **Towards the Dynamics of a DNN Learning Symbolic Interactions** [\[PDF\]](https://arxiv.org/pdf/2407.19198)  
  Qihan Ren\*, Junpeng Zhang\*, **Yang Xu**, Yue Xin, Dongrui Liu, Quanshi Zhang.  
  *Neural Information Processing Systems (NeurIPS), 2024.*


- **Tracking the Feature Dynamics in LLM Training: A Mechanistic Study** [\[PDF\]](https://arxiv.org/pdf/2412.17626)  
  **Yang Xu**, Yi Wang, Hengguan Huang, Hao Wang.  
  *arXiv preprint arXiv:2412.17626, 2024.*

- **Simulating and Understanding Deceptive Behaviors in Long-Horizon Interactions** [\[PDF\]](https://arxiv.org/abs/2510.03999)  
  **Yang Xu**\*, Xuanming Zhang\*, Samuel Yeh, Jwala Dhamala, Ousmane Dia, Rahul Gupta, Sharon Li.  
  *arXiv preprint arXiv:2510.03999, 2025.* (ICLR 2026 Accepted).



{% if site.author.googlescholar %}
  <div class="wordwrap">You can find my articles on <a href="{{site.author.googlescholar}}">my Google Scholar profile</a>.</div>
{% endif %}

{% comment %}
{% include base_path %}

New style rendering if publication categories are defined
{% if site.publication_category %}
  {% for category in site.publication_category %}
    {% assign title_shown = false %}
    {% for post in site.publications reversed %}
      {% if post.category != category[0] %}
        {% continue %}
      {% endif %}
      {% unless title_shown %}
        <h2>{{ category[1].title }}</h2><hr />
        {% assign title_shown = true %}
      {% endunless %}
      {% include archive-single.html %}
    {% endfor %}
  {% endfor %}
{% else %}
  {% for post in site.publications reversed %}
    {% include archive-single.html %}
  {% endfor %}
{% endif %}
{% endcomment %}

