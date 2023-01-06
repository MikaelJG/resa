
![Logo](https://github.com/MikaelJG/resa/blob/master/assets/resa_logo2.png)

# Resa

Resa is a React with Sass project creator. It uses Npx and Material UI to accelerate the development of React applications.

Written in Bash, Resa creates apps with your chosen components. In the command line, specify the components and the app will be automatically created with them.
## Installation
In your home directory, create or update your .bashrc file.
```bash
  cd # move to home
  vim .bashrc # edit your .bashrc file
```
In .bashrc, write an alias for Resa.
```bash
  alias resa="~/path/to/file.sh"

  # example
  alias resa="~/code/resa/resa.sh"
```
Install Resa.
```bash
 git clone https://github.com/MikaelJG/Resa
```
## Examples.

Specify all needed components in order.
```bash
# create react with sass application
$ resa alert button card

$ resa aalert button card
# at least one component doesn't exist
```
## Demo
Insert gif or link to demo

