#!/bin/bash
layout=$(mmsg get keyboardlayout | jq -r '.layout')
echo "$layout"
