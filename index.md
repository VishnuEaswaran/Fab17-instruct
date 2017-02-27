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

## Hi there !!

Here you will find resources for doing Fab Academy. We will try to accumulate all the references we find useful for you guys and also describe exactly what the Foundation expects while evaluating your work. This is of course keeping Indian students in mind as the system followed during academy is totally different from our own ways of learning and teaching. There will be one post per week and the contents will evolve over time.



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
