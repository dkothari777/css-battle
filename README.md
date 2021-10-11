# css-battle
Store css battle code

# Setup

## Pre-Requisites

This repository uses [direnv](https://direnv.net) automates adding the docker wrapper scripts  When you leave the directory, the PATH will be auto removed.
#### Linux install
```shell
$ curl -sfL https://direnv.net/install.sh | bash
$ echo 'eval "$(direnv hook bash)"' >> ~/.bashrc
```
>**Note:** Macs should automatically have direnv installed.

## Setup
Load in the environment and path variables
```shell
$ direnv allow
```

## Run
To render the css battle code, run 
```shell
$ render.sh <html-file>
```
