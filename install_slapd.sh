#!/bin/bash

echo "Hello~"
sudo debconf-get-selections | grep slapd
