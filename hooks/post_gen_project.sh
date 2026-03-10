#!/bin/bash

echo "Initializing git..."
git init
git branch -m main

echo "Setting up pre-commit..."
detect-secrets scan > .secrets.baseline
pre-commit install -f

echo "Initial commit..."
git add .
git commit -m "initial commit from django-template-cookiecutter"

echo "Creating GitHub repo..."
gh repo create {{cookiecutter.github_username}}/{{cookiecutter.project_slug}} \
  --{{cookiecutter.github_visibility}} \
  --source=. \
  --push

echo "Done! Project ready at https://github.com/{{cookiecutter.github_username}}/{{cookiecutter.project_slug}}"
