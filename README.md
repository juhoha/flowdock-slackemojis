## Importing slackemojis.com to Flowdock

This will break when someone changes something. Won't maintain this one-shot piece of spaghetti.

* Go to slackemojis.com, run scrape.js in console, copy pasta json to emojis.json
* mkdir dl;node dl.js
* Flowdock doesn't seem to support PNG or there was something weird, so
  * mkdir converted
  * sips (mac) or convert (linux) dl/_ -> converted/_.gif, mv dl/\*.gif converted
  * sips crashes for five or so pngs, just delete them and retry
* Upload single emoji manually, extract CSRF-token, session-cookie and organization id and put them in ul.sh
* node ul.js (forks 3,5k curls sequentally, takes a good while)
