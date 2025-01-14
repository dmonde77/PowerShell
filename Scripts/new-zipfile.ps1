﻿<#
.SYNOPSIS
	Creates a new .ZIP file from a folder (including subfolders)
.DESCRIPTION
	This script creates a new .ZIP file from a folder (including subfolders).
.PARAMETER folder
	Specifies the path to the folder
.EXAMPLE
	PS> ./new-zipfile C:\Windows
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

param([string]$folder = "")

try {
	if ($folder -eq "" ) { $folder = read-host "Enter the path to the folder to zip" }
	$StopWatch = [system.diagnostics.stopwatch]::startNew()

	$folder = resolve-path $folder
	compress-archive -path $folder -destinationPath $folder.zip

	[int]$Elapsed = $StopWatch.Elapsed.TotalSeconds
	"✔️ created zip file $($folder).zip in $Elapsed sec"
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
