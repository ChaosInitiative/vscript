# Chaos Common VScript Library 

This repository contains the source code for Chaos's common VScript library
for all Chaos-based projects that use VScript.

The goal of this library is to provide common scripts and utilities that can
be used in any Chaos game that supports VScript. Certain features 
may be implemented here instead of engine-side to reduce clutter
and to allow external contributors to work with the code.

The code in this repository is added to the game under `<game>/scripts/vscripts/lib`.

## Setup

To setup this code in your instance of Portal 2: Community Edition:
1. clone into p2ce/custom/VscriptRepo/scripts/vscripts/lib

Code can then be reloaded using `script_reload_lib` and `script_reload_lib_client` respectively.

## Contributing

When contributing code, make sure to follow the code and commit style guidelines.

### License

The license of this repository is under MIT. Before contributing, you should understand
and accept the terms of that license.

### Commit Messages

For commit messages, we use [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/).

Make sure to split up unrelated features into multiple commits and attach brief, but detailed description to them.

Fixes should have a brief description about the cause and reasoning for the fix.

### Code Style

The following code style guidelines should be adhered to:
* Indent using tabs
* 4 wide tabs
* Avoid spaces between parenthesis and their enclosing content
* Avoid adding a newline before opening curly brackets
* Function and class names should be pascal case
* Variable names should be camel case or snake case
* Global constants should be named in upper snake case (i.e. `MY_CONSTANT`)
* Complicated code should be commented to make it easier for other programmers to read & understand

