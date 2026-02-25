#!/bin/bash
if [ ! -f .env ]; then
  cp .env.example .env
  echo ".env file created. Please edit if needed."
else
  echo ".env file already exists, skipping."
fi