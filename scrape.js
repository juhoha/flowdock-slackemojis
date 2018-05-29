JSON.stringi$(".emoji")
  .toArray()
  .map(el => [el.title, el.children[0].href]);
