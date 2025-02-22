﻿<#
.SYNOPSIS
	Checks the file system of a drive (needs admin rights)
.DESCRIPTION
	This script checks the file system of a drive. It needs admin rights.
.PARAMETER Drive
	Specifies the drive to check
.EXAMPLE
	PS> ./check-file-system C
	✔️ file system on drive C is clean
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz · License: CC0
#>

#Requires -RunAsAdministrator

param([string]$Drive = "")

try {
	if ($Drive -eq "" ) { $Drive = read-host "Enter drive (letter) to check" }

	$Result = repair-volume -driveLetter $Drive -scan
	if ($Result -ne "NoErrorsFound") { throw "'repair-volume' failed" }

	& "$PSScriptRoot/give-reply.ps1" "File system on drive $Drive is clean."
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
