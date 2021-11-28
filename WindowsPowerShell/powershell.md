# Windows PowerShell 周りの設定

## 実行ポリシーの設定
まず、以下を管理者権限の PowerShell で実行する。  
```
Set-ExecutionPolicy Bypass
```
警告やユーザーへの確認なしに、全てのスクリプトが実行可能となる。

## Starship プロンプトのインストール
* `sudo choco install starship`

## `Microsoft.PowerShell_profile.ps1` の反映
`ドキュメント\WindowsPowerShell` 以下にこのディレクトリにある [Microsoft.PowerShell_profile.ps1](https://github.com/yudete/windows/blob/master/WindowsPowerShell/Microsoft.PowerShell_profile.ps1) を設置します。
