#!/bin/bash -ex
#
# Api 1.5 :: Server examples
#
# First run the login script to obtain the authentication cookies.
# Once these have been retrieved you can manipulate Rightscale objects.
#

# Import some variables
source ../user-details.sh

# Set some useful base variables
BASEURL="https://us-3.rightscale.com"

# Get a list of servers
curl -v -b "mySavedCookies-$ACCT" -X "GET" -H "X-API-VERSION:1.5" -H "Accept: application/xml" "$BASEURL/api/servers/943311003"

# Create a new server
#curl -v -b "mySavedCookies-$ACCT" -X "POST" -H "X-API-VERSION:1.5" -H "Accept: application/xml" \
#  -d "server[deployment_href]=/api/deployments/109926" \
#  -d "server[instance][cloud_href]=/api/clouds/232" \
#  -d "server[instance][server_template_href]=/api/server_templates/212263001" \
#  -d "server[name]=JD-API1.5-test-add-server" \
#  "$BASEURL/api/servers"

# Delete a server
curl -v -b "mySavedCookies-$ACCT" -X DELETE -H "X-API-VERSION:1.5" -H "Accept: application/xml" "$BASEURL/api/servers/943311003"

