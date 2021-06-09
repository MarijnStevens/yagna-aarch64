## Golem ARM

<h5 align="center">
[ DO NOT USE | UNSTABLE | TESTING ONLY ] <br/>
  <a href='https://golem.network/'><img
      width='500px'
      alt=''
      src="https://raw.githubusercontent.com/MarijnStevens/yagna-aarch64/master/.github/images/banner.png" /></a>
  <br/>A flexible, open-source platform for democratised access to digital resources.
</a>
</h5>

<p align="center">  
    <a href="https://github.com/MarijnStevens/yagna-aarch64/actions/workflows/deploy%20nightly.yml/badge.svg" alt="CI">
        <img src="https://github.com/MarijnStevens/yagna-aarch64/actions/workflows/deploy%20nightly.yml/badge.svg" /></a>  
    <a href="https://github.com/MarijnStevens/yagna-aarch64/watchers" alt="Watch on GitHub">
        <img src="https://img.shields.io/github/watchers/MarijnStevens/yagna-aarch64.svg?style=social" /></a>
    <a href="https://github.com/MarijnStevens/yagna-aarch64/stargazers" alt="Star on GitHub">
        <img src="https://img.shields.io/github/stars/MarijnStevens/yagna-aarch64.svg?style=social" /></a>
    <a href="https://discord.gg/y29dtcM" alt="Discord">
        <img src="https://img.shields.io/discord/684703559954333727?logo=discord" /></a>     
</p>

## Introduction

This is a fork of the 3 golem repositories:

- ![https://github.com/golemfactory/yagna](https://github.com/golemfactory/yagna) 
- ![https://github.com/golemfactory/ya-runtime-vm](https://github.com/golemfactory/ya-runtime-vm) 
- ![https://github.com/golemfactory/ya-runtime-wasi](https://github.com/golemfactory/ya-runtime-wasi) 

This build is for 64 bit arm architecture, also known as aarch64. This has been tested on both the Raspberry Pi 3 and 4. The Goal of this project was to provide a build of Golem for 64 bit arm as it becomes increasingly more common, especially after adoption from big companies like Apple and Nvidia.

## Setup Guide

Note: Current build requires 2.29 of GLIBC.

1. `wget https://github.com/MarijnStevens/yagna-aarch64/releases/download/v0.6.7-beta.1.032/yagna.tar.gz && tar -xf yagna.tar.gz && rm yagna.tar.gz`
2. `cd ./yagna-binaries/`
3. `chmod +x ./install.sh`
4. `./install.sh` and follow the instructions
5. `golemsp run`
6. To continue to run after configuration: `nohup golemsp run > yagna.log &`
