function prompt {
  "[" + (Split-Path (Get-Location) -Leaf) + "]" + " $ "
}

Set-Alias cl clear

chcp 65001
