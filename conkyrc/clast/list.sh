#!/bin/bash

last -a | sed "/:0\?.\?0$/d; s/ \+/ /g; s/^/$(printf "%38s")/" >/tmp/last.list
head -6 /tmp/last.list
