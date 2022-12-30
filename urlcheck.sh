#!/bin/bash
DATENOW=`date +%Y%m%d-%H%M%S`

if curl -s --head  --request GET https://www.pocketgeekid.com | grep "200 OK" > /dev/null && curl -s --head --request GET https://pocketgeekid.com | grep "200 OK" > /dev/null;

then echo "The HTTP server on www.pocketgeekid.com and pocketgeekid.com is UP!" #> /dev/null

else echo  "##vso[task.logissue type=error]The HTTP server on www.pocketgeekid.com OR pocketgeekid.com was DOWN at $DATENOW"
exit 1
fi
