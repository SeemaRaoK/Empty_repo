This repo can be used to trigger PGP url status check hourly from azure pipeline. Contains a cron job running hourly and a script to check HTTP status code for "www.pocketgeekid.com" and "pocketgeekid.com" urls. 
Build on azure pipeline would pass when both URLS return HTTP status code 200 and build is failed when either one of them returns code other than 200.
