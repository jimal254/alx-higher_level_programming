#!/bin/bash

# Send a PUT request to 0.0.0.0:5000/catch_me with curl and make the server respond with "You got me!"
curl -s -X PUT -d "user_id=98" -H "Origin: HolbertonSchool" 0.0.0.0:5000/catch_me
