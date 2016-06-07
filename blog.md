---
layout: default
section: blog
is_top_level: true
title: "Blog"
banner_photo: "/images/rain.jpg"

---

<div class="cards central-col">
  {% for post in site.posts %}
    <a class="card project-card" href="{{ post.url | prepend: site.baseurl }}">
      <!-- <img src="{{ post.thumbnail }} " width="512" height="250" /> -->
      <div class="thumb" style="background-image: url('{{ post.banner_photo }}');" ></div>
      <div class="desc">
        <h3>{{ post.title }}</h3>
        <p>
        Posted on {{ post.date | date: "%B %-d, %Y" }}
        </p>
      </div>
    </a>
  {% endfor %}
</div>
