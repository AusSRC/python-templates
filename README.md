# AusSRC Python template repository

This template repository is a git submodule that provides a collection of Makefile commands and CI/CD pipelines for AusSRC Python code repositories stored on Github.

## Install

Run the following commands to include

```
git submodule add ... templates
git submodule update --init --recursive
```

Create a Makefile at the root level of the repository and import the template

```
include templates/Makefile
```

Once the Makefile has been created, and the template has been imported, you can run the CI/CD pipelines that are run in Github Actions locally

## CI/CD

## Github Actions
