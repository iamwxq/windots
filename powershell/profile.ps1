Set-Alias -Name touch -Value New-File

# 目录变为无色
$PSStyle.FileInfo.Directory = ""

###### Catppuccin ######
# PS 7.2+ only
Import-Module Catppuccin
$Flavor = $Catppuccin['Mocha']
$PSStyle.Formatting.Debug = $Flavor.Sky.Foreground()
$PSStyle.Formatting.Error = $Flavor.Red.Foreground()
$PSStyle.Formatting.ErrorAccent = $Flavor.Blue.Foreground()
$PSStyle.Formatting.FormatAccent = $Flavor.Teal.Foreground()
$PSStyle.Formatting.TableHeader = $Flavor.Rosewater.Foreground()
$PSStyle.Formatting.Verbose = $Flavor.Yellow.Foreground()
$PSStyle.Formatting.Warning = $Flavor.Peach.Foreground()
function prompt {
    $(if (Test-Path variable:/PSDebugContext) { "$($Flavor.Red.Foreground())[DBG]: " }
      else { '' }) + "$($Flavor.Teal.Foreground())PS $($Flavor.Yellow.Foreground())" + $(Get-Location) +
        "$($Flavor.Green.Foreground())" + $(if ($NestedPromptLevel -ge 1) { '>>' }) + '> ' + $($PSStyle.Reset)
}
###### Catppuccin ######

# 取消ni的别名
Remove-Item Alias:ni -Force -ErrorAction Ignore

# 初始化conda，需要在引入starship之前执行，否则shell的样式会出现问题（重复的环境名称），注意如果是处于base环境中的话starship不会展示环境名
If (Test-Path "D:\develop\miniconda\Scripts\conda.exe") {
    (& "D:\develop\miniconda\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | ?{$_} | Invoke-Expression
}

# 引入starship
Invoke-Expression (&starship init powershell)

function New-File {
    <#
    .SYNOPSIS
        Creates a new file with the specified name and extension. Alias: touch
    #>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, Position = 0)]
        [string]$Name
    )

    Write-Verbose "Creating new file '$Name'"
    New-Item -ItemType File -Name $Name -Path $PWD | Out-Null
}
