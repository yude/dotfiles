# function prompt {
#   "[" + (Split-Path (Get-Location) -Leaf) + "]" + " $ "
# }

Set-Alias cl clear

Invoke-Expression (&starship init powershell)

chcp 65001
