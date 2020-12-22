#!/snap/bin/powershell

# Syntax:       ./write-big.ps1 [<text>]
# Description:	writes the given text in big letters
# Author:	Markus Fleschutz
# Source:	github.com/fleschutz/PowerShell
# License:	CC0

param([String]$Text)

function BigA() { param([Int]$Row)
	switch($Row) {
	1 { return "   __   " }
	2 { return "  /__\  " }
	3 { return " /(__)\ " }
	4 { return "(__/\__)" }
	}
}

function BigB() { param([Int]$Row)
	switch($Row) {
	1 { return " ____ " }
	2 { return "| _  )" }
	3 { return "| _ ( " }
	4 { return "|____)" }
	}
}

function BigC() { param([Int]$Row)
	switch($Row) {
	1 { return "  ___ " }
	2 { return " / __)" }
	3 { return "( (__ " }
	4 { return " \___)" }
	}
}

function BigD() { param([Int]$Row)
	switch($Row) {
	1 { return " ____  " }
	2 { return "|  _ \ " }
	3 { return "| (_) )" }
	4 { return "|____/ " }
	}
}

function BigE() { param([Int]$Row)
	switch($Row) {
	1 { return " ____ " }
	2 { return "| ___)" }
	3 { return "| __) " }
	4 { return "|____)" }
	}
}

function BigF() { param([Int]$Row)
	switch($Row) {
	1 { return " ____ " }
	2 { return "| ___)" }
	3 { return "| __) " }
	4 { return "|_)   " }
	}
}

function BigG() { param([Int]$Row)
	switch($Row) {
	1 { return "  ____ " }
	2 { return " / ___)" }
	3 { return "( (__-." }
	4 { return " \____|" }
	}
}

function BigH() { param([Int]$Row)
	switch($Row) {
	1 { return " _   _ " }
	2 { return "| |_| |" }
	3 { return "|  _  |" }
	4 { return "|_| |_|" }
	}
}

function BigI() { param([Int]$Row)
	switch($Row) {
	1 { return " _ " }
	2 { return "| |" }
	3 { return "| |" }
	4 { return "|_|" }
	}
}

function BigJ() { param([Int]$Row)
	switch($Row) {
	1 { return "   __ " }
	2 { return "  (  |" }
	3 { return ".-_) |" }
	4 { return "\____|" }
	}
}

function BigK() { param([Int]$Row)
	switch($Row) {
	1 { return " _  _ " }
	2 { return "| |/ )" }
	3 { return "|   ( " }
	4 { return "|_|\_)" }
	}
}

function BigL() { param([Int]$Row)
	switch($Row) {
	1 { return " _    " }
	2 { return "| |   " }
	3 { return "| |__ " }
	4 { return "|____)" }
	}
}

function BigM() { param([Int]$Row)
	switch($Row) {
	1 { return " _    _ " }
	2 { return "| \  / |" }
	3 { return "|  \/  |" }
	4 { return "|_|  |_|" }
	}
}

function BigN() { param([Int]$Row)
	switch($Row) {
	1 { return " _   _ " }
	2 { return "| \ | |" }
	3 { return "|  \| |" }
	4 { return "|_| \_|" }
	}
}

function BigO() { param([Int]$Row)
	switch($Row) {
	1 { return "  ___  " }
	2 { return " / _ \ " }
	3 { return "( (_) )" }
	4 { return " \___/ " }
	}
}

function BigP() { param([Int]$Row)
	switch($Row) {
	1 { return " ____ " }
	2 { return "|  _ \" }
	3 { return "|  __/" }
	4 { return "|_|   " }
	}
}

function BigQ() { param([Int]$Row)
	switch($Row) {
	1 { return "  ____  " }
	2 { return " / _  \ " }
	3 { return "( (_) ( " }
	4 { return " \___/\\" }
	}
}

function BigR() { param([Int]$Row)
	switch($Row) {
	1 { return " ____ " }
	2 { return "|  _ \" }
	3 { return "|    /" }
	4 { return "|_|\_)" }
	}
}

function BigS() { param([Int]$Row)
	switch($Row) {
	1 { return " ____ " }
	2 { return "/  __)" }
	3 { return "\__  \" }
	4 { return "(____/" }
	}
}

function BigT() { param([Int]$Row)
	switch($Row) {
	1 { return " _____ " }
	2 { return "|_   _|" }
	3 { return "  | |  " }
	4 { return "  |_|  " }
	}
}

function BigU() { param([Int]$Row)
	switch($Row) {
	1 { return " _   _ " }
	2 { return "| | | |" }
	3 { return "| |_| |" }
	4 { return "|_____|" }
	}
}

function BigV() { param([Int]$Row)
	switch($Row) {
	1 { return " _  _ " }
	2 { return "( \/ )" }
	3 { return " \  / " }
	4 { return "  \/  " }
	}
}

function BigW() { param([Int]$Row)
	switch($Row) {
	1 { return " __    __ " }
	2 { return "\  \/\/  /" }
	3 { return " \      / " }
	4 { return "  \_/\_/  " }
	}
}

function BigX() { param([Int]$Row)
	switch($Row) {
	1 { return " _  _ " }
	2 { return "( \/ )" }
	3 { return " )  ( " }
	4 { return "(_/\_)" }
	}
}

function BigY() { param([Int]$Row)
	switch($Row) {
	1 { return " _  _ " }
	2 { return "( \/ )" }
	3 { return " \  / " }
	4 { return " (__) " }
	}
}

function BigZ() { param([Int]$Row)
	switch($Row) {
	1 { return " ____ " }
	2 { return "(_   )" }
	3 { return " / /_ " }
	4 { return "(____)" }
	}
}


function Big0() { param([Int]$Row)
	switch($Row) {
	1 { return "  ___  " }
	2 { return " / _ \ " }
	3 { return "( (_) )" }
	4 { return " \___/ " }
	}
}

function Big1() { param([Int]$Row)
	switch($Row) {
	1 { return " ___ " }
	2 { return "/_  |" }
	3 { return "  | |" }
	4 { return "  |_|" }
	}
}

function Big2() { param([Int]$Row)
	switch($Row) {
	1 { return " ___  " }
	2 { return "(__ \ " }
	3 { return " / _/ " }
	4 { return "(____)" }
	}
}

function Big3() { param([Int]$Row)
	switch($Row) {
	1 { return " ___ " }
	2 { return "(__ )" }
	3 { return " (_ \\" }
	4 { return "(___/" }
	}
}

function Big4() { param([Int]$Row)
	switch($Row) {
	1 { return "  __  " }
	2 { return " /. | " }
	3 { return "(_  _)" }
	4 { return "  |_| " }
	}
}

function Big5() { param([Int]$Row)
	switch($Row) {
	1 { return " ____ " }
	2 { return "| ___)" }
	3 { return "|__ \ " }
	4 { return "(___/ " }
	}
}

function Big6() { param([Int]$Row)
	switch($Row) {
	1 { return "  _  " }
	2 { return " / ) " }
	3 { return "/ _ \" }
	4 { return "\___/" }
	}
}

function Big7() { param([Int]$Row)
	switch($Row) {
	1 { return " ___ " }
	2 { return "(__ )" }
	3 { return " / / " }
	4 { return "(_/  " }
	}
} 

function Big8() { param([Int]$Row)
	switch($Row) {
	1 { return " ___ " }
	2 { return "( _ )" }
	3 { return "/ _ \" }
	4 { return "\___/" }
	}
} 

function Big9() { param([Int]$Row)
	switch($Row) {
	1 { return " ___ " }
	2 { return "/ _ \" }
	3 { return "\_  /" }
	4 { return " (_/ " }
	}
} 

function BigChar() { param([String]$Char, [Int]$Row)
	switch($Char) {
	'A' { return BigA $Row }
	'B' { return BigB $Row }
	'C' { return BigC $Row }
	'D' { return BigD $Row }
	'E' { return BigE $Row }
	'F' { return BigF $Row }
	'G' { return BigG $Row }
	'H' { return BigH $Row }
	'I' { return BigI $Row }
	'J' { return BigJ $Row }
	'K' { return BigK $Row }
	'L' { return BigL $Row }
	'M' { return BigM $Row }
	'N' { return BigN $Row }
	'O' { return BigO $Row }
	'P' { return BigP $Row }
	'Q' { return BigQ $Row }
	'R' { return BigR $Row }
	'S' { return BigS $Row }
	'T' { return BigT $Row }
	'U' { return BigU $Row }
	'V' { return BigV $Row }
	'W' { return BigW $Row }
	'X' { return BigX $Row }
	'Y' { return BigY $Row }
	'Z' { return BigZ $Row }
	'0' { return Big0 $Row }
	'1' { return Big1 $Row }
	'2' { return Big2 $Row }
	'3' { return Big3 $Row }
	'4' { return Big4 $Row }
	'5' { return Big5 $Row }
	'6' { return Big6 $Row }
	'7' { return Big7 $Row }
	'8' { return Big8 $Row }
	'9' { return Big9 $Row }
	}
	return "      "
}

try {
	if ($Text -eq "" ) {
		[String]$Text = read-host "Enter text to write"
	}
	[char[]]$ArrayOfChars = $Text.ToUpper()
	write-output ""
	for ($Row = 1; $Row -lt 5; $Row++) {
		$Line = ""
		foreach($Char in $ArrayOfChars) {
			$Line += BigChar $Char $Row
		}
		write-output $Line
	}
	write-output ""
	exit 0
} catch {
	write-error "ERROR in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}