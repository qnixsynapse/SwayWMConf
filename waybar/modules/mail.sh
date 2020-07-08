#!/usr/bin/bash

username= 
password= 

curl -u $username:$password --silent 'https://mail.google.com/mail/feed/atom' | sed -n 's:.*<fullcount>\(.*\)</fullcount>.*:\1:p'
