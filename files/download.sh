#!/bin/bash

# DOWNLOADs
curl -L https://raw.githubusercontent.com/jpetazzo/dind/master/wrapdocker > /usr/local/bin/wrapdocker; chmod +x /usr/local/bin/wrapdocker
curl -L https://github.com/docker/fig/releases/download/1.0.1/fig-`uname -s`-`uname -m` > /usr/local/bin/fig; chmod +x /usr/local/bin/fig
