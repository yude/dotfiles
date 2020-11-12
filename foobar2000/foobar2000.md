# foobar2000 とその周辺でやること

* 本体: `choco install foobar2000`

## 導入するもの (Components)
* AACGain  
[この](https://www.rarewares.org/aac-encoders.php)ページから落とした `aacgain.exe` を `mp3gain.exe` に名前を変更して、インストールされている `MP3Gain.exe` と置き換える。
* [non existent - 日本語化](https://tnetsixenon.xrea.jp/rnote/localization/)
* [Audioscrobbler](https://www.foobar2000.org/components/view/foo_audioscrobbler) 
* [Columns UI](https://yuo.be/columns-ui)

## バックアップから設定を復元する
このディレクトリにある `configuration` を `C:\Users\%username%\AppData\Roaming\foobar2000` にコピーする。

## ファイル更新日順にソートする
Column が並んでいるところを右クリック -> [Columns] -> [More...]  
このようにする。  
![Preferences: Playlist View](https://i.imgur.com/kD18nyL.png)

## 曲の分類方法に「ファイルのパス」を追加する
[Library] -> [Config] -> [Media Library] -> [Album List]  
以下のようにする。  
![Preferences: Album List](https://i.imgur.com/RPvvpT3.png)

## フォルダ同期プレイリストを作る
つまり、指定したフォルダに曲が入ったり消えたりすると、それが foobar2000 側に逐次反映されるようにする。  
上の "曲の分類方法に「ファイルのパス」を追加する" を行った後、[Library] -> [Album List] と進む。  
表示を以下のようにし、  
![by path](https://i.imgur.com/YfIMvQG.png)  
追加したいディレクトリを右クリックして、[Create AutoPlaylist] をクリックする。  
![Create Autoplaylist](https://i.imgur.com/9O3RenA.png)  
すると、追加される。  
![Done](https://i.imgur.com/qzQh8I6.png)

## 色, フォントの設定
![Color scheme and fonts](https://i.imgur.com/Lk3Oq1v.png)