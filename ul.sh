#!/bin/bash

ORG="12345"
CSRF_HEADER_CONTENT="foo"
SESSION_HEADER_CONTENT="bar"

curl 'https://www.flowdock.com/organizations/$ORG/emoji' \
    -H "Referer: https://www.flowdock.com/organizations/$ORG/emoji" \
    -H "X-CSRF-Token: $CSRF_HEADER_CONTENT" \
    -H "Cookie: $SESSION_HEADER_CONTENT" \
    -H 'Pragma: no-cache' \
    -H 'Origin: https://www.flowdock.com' \
    -H 'Accept-Encoding: gzip, deflate, br' \
    -H 'Accept-Language: en-GB,en;q=0.9,en-US;q=0.8,fi;q=0.7,la;q=0.6' \
    -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36' \
    -H 'Accept: */*' \
    -H 'Cache-Control: no-cache' \
    -H 'X-Requested-With: XMLHttpRequest' \
    -H 'Connection: keep-alive' \
    -F "name=s_$1" \
    -F "image=@converted/$1.gif" \
    2>&1 1>/dev/null