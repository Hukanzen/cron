#!/usr/bin/env python3

#coding: UTF-8

import slackweb

import subprocess


# コマンド実行
def system(cmd):
	return (subprocess.Popen(cmd, stdout=subprocess.PIPE, shell=True).communicate()[0]).decode(encoding='utf-8')
	
	
def main():

	ret=system("uptime")

	url=system('cat /anykeydata/slack_mac13')

	slack = slackweb.Slack(url=str(url))
	slack.notify(text=str(ret))


if __name__ == '__main__':
	main()
