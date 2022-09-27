#!/bin/sh

tail -$WTEE_LINES -f $WTEE_FILEPATH | wtee -b 0.0.0.0:$WTEE_PORT