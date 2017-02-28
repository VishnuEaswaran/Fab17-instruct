---
layout: one
---

<div class="header">
    <h1>{{ site.name }}</h1>
    <ul>
        {% for item in site.data.navigation %}
        <li>
            <a href="{{ item.url }}">{{ item.title }}</a>
        </li>
        {% endfor %}
    </ul>
</div>
<!-- From here it is just markdown -->
## Hi there !!

Here you will find resources for doing Fab Academy. We will try to accumulate all the references we find useful for both students and instructors. Hope this evolve into one big, organised, study material.
<p>
<p> Best, </p>
Vishnu, Yadu and Sibu
</p>
<!-- till here it is markdown -->

<div class="blog">
    <h1>Posts::</h1>
    <ul>
        {% for post in site.posts %}
        <li>
            <span class="date">{{ post.date | date: '%Y %b %d' }}</span> - <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
        </li>
        {% endfor %}
    </ul>
</div>
