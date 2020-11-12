# Windows PowerShell 周りの設定

## 実行ポリシーの設定
まず、以下を管理者権限の PowerShell で実行する。  
```
Set-ExecutionPolicy Bypass
```
警告やユーザーへの確認なしに、全てのスクリプトが実行可能

## シェルの prefix を変更する、加えて既定の文字コードを UTF-8 にする。
`ドキュメント\WindowsPowerShell` 以下にこのディレクトリにある [Microsoft.PowerShell_profile.ps1](https://github.com/yudete/windows/blob/master/WindowsPowerShell/Microsoft.PowerShell_profile.ps1) を設置します。  
上記のディレクトリが存在しない場合は、作成してください。  
個別にダウンロードは面倒なので、コピペしてください。  
