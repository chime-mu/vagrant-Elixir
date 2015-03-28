#!/usr/bin/env bash

if [[ $(erl +V 2>&1) != Erlang*6.3* ]]
then
	apt-get update
	apt-get -y install build-essential libncurses5-dev openssl libssl-dev fop xsltproc unixodbc-dev
	cd /tmp
	wget -q http://www.erlang.org/download/otp_src_17.4.tar.gz
	tar zxvf otp_src_17.4.tar.gz
	cd otp_src_17.4
	export ERL_TOP=$(pwd)
	./configure && make && make install
	rm -rf /tmp/otp_src_17.4.tar.gz otp_src_17.4
	# Install rebar
	wget -q https://github.com/rebar/rebar/wiki/rebar
	chmod +x rebar
	mv rebar /usr/local/bin
else
	echo Seems Erlang 17.4 is already installed
fi