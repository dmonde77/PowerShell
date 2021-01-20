#!/snap/bin/powershell
<#
.SYNTAX         ./clone-repos.ps1
.DESCRIPTION	clones well-known Git repositories into the current directory.
.LINK		https://github.com/fleschutz/PowerShell
.NOTES		Author:	Markus Fleschutz / License: CC0
#>

$PathToRepo = "$PSScriptRoot/.."

try {
	$Table = import-csv "$PathToRepo/Data/repos.csv"

	foreach($Row in $Table) {
		$URL = $Row.URL
		write-output ""
		write-output "Cloning $URL..."
		git clone $URL
	}

	write-output "Done."
	exit 0
} catch {
	write-error "ERROR in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
