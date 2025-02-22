﻿<#
.SYNOPSIS
	Turns the audio volume down (-10% by default)
.DESCRIPTION
	This script turns the audio volume down (by -10% by default).
.PARAMETER percent
	Specifies the percent number
.EXAMPLE
	PS> ./turn-volume-down
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

param([int]$percent = 10)

try {
	$obj = New-Object -com wscript.shell
	for ([int]$i = 0; $i -lt $percent; $i += 2) {
		$obj.SendKeys([char]174) # each tick is -2%
	}
	& "$PSScriptRoot/give-reply.ps1" "$($percent)% less volume"
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
