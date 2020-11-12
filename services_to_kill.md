# 無効化するべきサービスの一覧

## 一覧

* Connected User Experiences and Telemetry
* SysMain (旧称: Superfetch)

## コマンドによって以上のサービスを 停止 / 無効化 する
### 停止
```
net stop SysMain
net stop DiagTrack
net stop DPS
net stop CertPropSvc
net stop MapsBroker
net stop WMPNetworkSvc
```
### 無効
```
sc config SysMain Start=disabled
sc config DiagTrack Start=disabled
sc config DPS Start=disabled
sc config CertPropSvc Start=disabled
sc config MapsBroker Start=disabled
sc config WMPNetworkSvc Start=disabled
```