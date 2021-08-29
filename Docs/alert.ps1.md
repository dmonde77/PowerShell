# PowerShell Script /home/mf/PowerShell/Scripts/alert.ps1

## Synopsis
alert.ps1 [<message>]

## Description
Handle and escalate the given alert message

## Syntax
```powershell
/home/mf/PowerShell/Scripts/alert.ps1 [[-Message] <String>] [<CommonParameters>]
```

## -Message &lt;String&gt; Parameter

```
-Message <String>
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
```
## <CommonParameters>
This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216).

## Example
```powershell
PS>.\alert.ps1 "Harddisk failure"
```


## Notes
Author:  Markus Fleschutz
License: CC0

## Related Links
https://github.com/fleschutz/PowerShell

*Created by convert-ps2md.ps1*