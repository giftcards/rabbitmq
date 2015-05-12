## Synopsis

Puppet module to install the rabbitmq messaging server.

## Example

Defaults are stored in params.pp.
Adds a fact that reads your erlang cookie file.

## Motivation

Required to setup rabbit clustering and messaging services.

## Installation

Tested on CentOS 6.
Requires the EPEL.

## API Reference

rabbitmq_erlang_cookie => sets the cookie for clustering

## Contributors

Ryan Munz for Giftcards.com - May 2015
