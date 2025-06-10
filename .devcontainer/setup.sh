#!/bin/bash
set -e  # exit on error

pip install -r requirements.txt
cd /workspaces/maddpg-mpe-pytorch/multiagent-particle-envs 
pip install -e .
cd /workspaces/maddpg-mpe-pytorch