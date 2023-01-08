
![Logo](https://github.com/MikaelJG/resa/blob/master/assets/resa_logo3.png)

# Resa

Resa is a React with Sass project creator. It uses Npx and Material UI to accelerate the development of React applications.

Written in Bash and Lua, Resa creates apps with your chosen components. In the command line, specify the components and the app will be automatically created with them.
## Installation
In your home directory, create or update your .bashrc file.
```bash
$ cd # move to home
$ vim .bashrc # edit your .bashrc file
```
In .bashrc, write an alias for Resa.
```bash
  alias resa="lua ~/path/to/start.lua"

  # example
  alias resa="lua ~/code/resa/start.lua"
```
Install Resa.
```bash
$ git clone https://github.com/MikaelJG/Resa
```
Install Lua.
```bash
$ sudo apt install lua5.3 
```
## Examples.

Specify all needed components in order.
```bash
$ resa alert button card # create react with sass app
$ resa aalert button card # at least one component doesn't exist
```
## Demo
Insert gif or link to demo

