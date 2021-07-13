<#
.SYNOPSIS
	close-file-explorer.ps1 
.DESCRIPTION
	Closes Microsoft File Explorer gracefully
.EXAMPLE
	PS> .\close-file-explorer.ps1
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz / License: CC0
#>

& "$PSScriptRoot/close-program.ps1" "File Explorer" "explorer" "explorer"
exit 0
