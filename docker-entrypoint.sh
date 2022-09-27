#!/bin/sh

tail -f /file.log | wtee -b 0.0.0.0:8080 | nl