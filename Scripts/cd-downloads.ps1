﻿<#
.SYNTAX       cd-downloads.ps1 
.DESCRIPTION  go to the user's downloads folder
.LINK         https://github.com/fleschutz/PowerShell
.NOTES        Author: Markus Fleschutz / License: CC0
#>

$TargetDir = resolve-path "$HOME/Downloads"
if (-not(test-path "$TargetDir" -pathType container)) {
	write-warning "Sorry, directory 📂$TargetDir is missing"
	exit 1
}
set-location "$TargetDir"
"📂$TargetDir"
exit 0
