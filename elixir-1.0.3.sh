#!/usr/bin/env bash

ELIXIR_DIR=/usr/local/lib/Elixir-1.0.3
if [ ! -d $ELIXIR_DIR ]
then
	mkdir $ELIXIR_DIR
	cd $ELIXIR_DIR
	wget -q https://github.com/elixir-lang/elixir/releases/download/v1.0.3/Precompiled.zip
	unzip Precompiled.zip
	rm Precompiled.zip
	echo '# Elixir path' >> /etc/profile
	echo 'export PATH=$PATH:/usr/local/lib/Elixir-1.0.3/bin' >> /etc/profile
else
	echo Seems Elixir 1.0.3 is already installed
fi
