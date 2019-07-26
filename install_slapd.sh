#!/bin/bash

echo "Hello~"
$p = sudo debconf-get-selections | grep slapd
echo $p
