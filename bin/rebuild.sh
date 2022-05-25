#!/bin/bash
curl -u develpeer:$DEVELPEER_TOKEN -X POST https://api.github.com/repos/develpeer/pub/pages/builds
