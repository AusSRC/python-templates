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

### pyproject.toml

This is a required file that should contain the following development dependencies

```
[project.optional-dependencies]
dev = [
    "ruff",
    "pytest",
    "pytest-cov",
]
```

## CI/CD

## Github Actions

We have defined workflow templates here to be used in your custom CI/CD workflows. You can read more [in the docs](https://docs.github.com/en/actions/how-tos/write-workflows/use-workflow-templates). An example of calling a workflow template from a Python project root level `.gitlab/workflows/ci.yml` pipeline is shown below

```
name: cicd
on:
  [push, pull_request]
jobs:
  lint:
    uses: AusSRC/python-templates/.github/workflows/lint.yml@main
```

## Confluence pages

* [Code conventions](https://aussrc.atlassian.net/wiki/spaces/DEV/pages/2224259081/Code+Conventions+and+standards+WIP)
* [CI/CD pipeline standards](https://aussrc.atlassian.net/wiki/spaces/DEV/pages/2222424111/CI+CD+Pipeline+Standards+and+Best+Practices+for+Projects)
