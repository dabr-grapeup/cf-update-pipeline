#!/bin/bash

apt-get update && apt-get install -y wget

job-scripts/bosh_cli_install.sh

SYSTEM_DOMAIN=cf.trainings2.cflab.grapeup.com
export BOSH_CLIENT=admin
export BOSH_CLIENT_SECRET=e5negwavp3j63i8fui8c
export BOSH_ENVIRONMENT=https://52.30.212.49:25555
export BOSH_CA_CERT='-----BEGIN CERTIFICATE-----
MIIDEzCCAfugAwIBAgIQTnzCyyMLiIKcthxGIKOqkjANBgkqhkiG9w0BAQsFADAz
MQwwCgYDVQQGEwNVU0ExFjAUBgNVBAoTDUNsb3VkIEZvdW5kcnkxCzAJBgNVBAMT
AmNhMB4XDTE3MDkxMzA4MDkwOVoXDTE4MDkxMzA4MDkwOVowMzEMMAoGA1UEBhMD
VVNBMRYwFAYDVQQKEw1DbG91ZCBGb3VuZHJ5MQswCQYDVQQDEwJjYTCCASIwDQYJ
KoZIhvcNAQEBBQADggEPADCCAQoCggEBAMs9SYE6JyHVNsilaUaWctaxUM5B/Bpd
/JnSP9YEY6EXYwp6agcA0n5Tf/TOKYhYSlTkbryz+iC3yQ1VMdzdPHMc8xFYEobW
UkR2zIGCo7Ldizj0o/kfZDfEAsFLB0+GgOjZiQ4QqsLwcZzW7BTeQtqL/mHHaNBQ
PCSLTTTM92hiAQDRl5YGqPhOP1MWby1jfBrfOKsoJvEKxLRcLF00+6PXAE2JGr6k
Cn6s6hVqy7q4nNKGiJTRXzdk7xeaTpvQD+GEt9siMcb/09SlVx0NjiR+3m/+uZFb
usW+g7Yaq4RGyLYRyXvYEjey5ymarXQh8AUqsHcTKGzR2V5SiPtFtm8CAwEAAaMj
MCEwDgYDVR0PAQH/BAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wDQYJKoZIhvcNAQEL
BQADggEBAJwHJ1UeVFSZFgavcH+nGrfq3kQMCngQ8f+FwFFtE51qZ5VUzlDoGWqX
QPJZTGGFp5d2VojPScq7SYF0EDEsFw9m1cuFG1ViQnLHzDhcXlBjHDLJBg/mzHJg
E/oFCJ+plDt128boo6YK/c03YVjLSefLVWoWI2h1DdWCT07u9VNrDYiYLQZi6yhD
kXIJqik3UsnMyxolQUrfM+6iva6TynbCq+UA5Eil6GsnoGldKk8ZJyX7o46YdI86
vwY1JMmqAD65TIc/10VDzrrNbfKBzstOUL51d1CJLlSoSXUbkll/y9LCIJtqswbE
SwNLtIjJZ/21xjdu+8ehtg7gS+FA9wc=
-----END CERTIFICATE-----
'

bosh -d cf deploy cf-deployment/cf-deployment.yml --vars-store env-repo/deployment-vars.yml -v system_domain=$SYSTEM_DOMAIN -o cf-deployment/operations/scale-to-one-az.yml -o cf-deployment/operations/aws.yml -n