#!/bin/bash

mkdir src/
projectName=${PWD##*/}

echo "Module {
	name: '$projectName'
	description: ''
	version: '0.0.0'
	license: 'MIT'
	dependencies: []
}" > mod.v

echo "module main

fn main() {
  println('Hello!')
}" > src/main.v

echo "#!/bin/bash 

v run src/main.v" > run.sh
chmod +x ./run.sh

