# jekyll-page-posts
A Jekyll plugin for adding posts to a page. Inspired by [Siteleaf's posts](http://www.siteleaf.com/help/themes/variables/posts/)

## Why?
Have you ever wanted to add ordered sections of Markdown to a page? Page posts solve this problem. Example:

```
{% for post in page.posts %}
  {{ post.content }}
{% endfor %}
```

## How?
Simply place any posts that belong to a page within a folder named after that page, preceded by an underscore. For an about page, create a directory called _about and place markdown files within. 
