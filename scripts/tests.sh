#!/bin/sh

echo --- Integration Tests ---

### Variables ###
hostname="alpine-nginx-test"
application="Test Alpine Nginx Container $(date +$s)" #randomized
echo Hostname: ${hostname}
echo Application: ${application}

### Tests ###
echo "TEST: GET request should return 'alpine-nginx' in the response body"
url="http://${hostname}"
echo ${url}
curl -X GET -H 'Accept: application/html; charset=UTF-8' \
--url "${url}" \
| grep alpine-nginx > /dev/null
[ "$?" -ne 0 ] && echo "RESULT: fail" && exit 1
echo "RESULT: pass"
