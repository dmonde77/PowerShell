<#
.SYNOPSIS
	Turns the volume on
.DESCRIPTION
	This script unmutes the audio output.
.EXAMPLE
	PS> .\turn-volume-on.ps1
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

function volume_on_off {
	$obj = new-object -com wscript.shell
	$obj.SendKeys([char]173)
}

volumen_on_off
