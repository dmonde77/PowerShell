﻿<#
.SYNOPSIS
	Checks the time until New Year
.DESCRIPTION
	This script checks the time until New Year and replies by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-new-year
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

try {
	$Now = [DateTime]::Now
	$NewYear = [Datetime]("12/31/" + $Now.Year)
	$Days = ($NewYear – $Now).Days + 1
	if ($Days -gt 1) {
		& "$PSScriptRoot/give-reply.ps1" "New Year is in $Days days."
	} elseif ($Days -eq 1) {
		& "$PSScriptRoot/give-reply.ps1" "New Year is tomorrow."
	}
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
