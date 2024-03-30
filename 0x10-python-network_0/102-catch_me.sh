#!/bin/bash

# Send a POST request to 0.0.0.0:5000/catch_me with curl
curl -sLX PUT -d "user_id=98" -H "Origin: HolbertonSchool" 0.0.0.0:5000/catch_me

