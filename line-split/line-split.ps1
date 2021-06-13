# アセンブリ読み込み
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# 分割する行数のフォーム作成
$form = New-Object System.Windows.Forms.Form
$form.Text = "分割行数"
$form.Size = New-Object System.Drawing.Size(260,180)

# OKボタンの設定
$OKButton = New-Object System.Windows.Forms.Button
$OKButton.Location = New-Object System.Drawing.Point(40,100)
$OKButton.Size = New-Object System.Drawing.Size(75,23)
$OKButton.Text = "OK"
$OKButton.DialogResult = "OK"

# キャンセルボタンの設定
$CancelButton = New-Object System.Windows.Forms.Button
$CancelButton.Location = New-Object System.Drawing.Point(130,100)
$CancelButton.Size = New-Object System.Drawing.Size(75,23)
$CancelButton.Text = "キャンセル"
$CancelButton.DialogResult = "Cancel"

# ラベルの設定
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(10,30)
$label.Size = New-Object System.Drawing.Size(250,20)
$label.Text = "分割する行数を入力してください。"

# 入力ボックスの設定
$textBox = New-Object System.Windows.Forms.TextBox
$textBox.Location = New-Object System.Drawing.Point(10,70)
$textBox.Size = New-Object System.Drawing.Size(225,50)

# キーとボタンの関係
$form.AcceptButton = $OKButton
$form.CancelButton = $CancelButton

# ボタン等をフォームに追加
$form.Controls.Add($OKButton)
$form.Controls.Add($CancelButton)
$form.Controls.Add($label)
$form.Controls.Add($textBox)

#フォームを常に手前に表示
$form.Topmost = $True

#フォームをアクティブにし、テキストボックスにフォーカスを設定
$form.Add_Shown({$textBox.Select()})

# 引数チェック
if([string]::IsNullorEmpty($Args[0])) {
    [System.Windows.Forms.MessageBox]::Show("分割するファイルが指定されていません。", "分割ファイル指定エラー")
    exit
}

# ファイルの存在チェック
if(-not(Test-Path $Args[0])){
    [System.Windows.Forms.MessageBox]::Show("分割対象ファイルが存在しません", "ファイル指定エラー")
    exit
}

# フォームの表示
$result = $form.ShowDialog()

if ($result -eq "OK") {
    $Line = $textBox.Text
}
else {
    exit
}

# 分割行数が数値か確認
if (-not([int]::TryParse($Line,[ref]$null))) {
    [System.Windows.Forms.MessageBox]::Show("数値以外の値が入っているため、処理を終了します。", "分割行数指定エラー")
    exit
}

# 分割後ファイル名指定用
$FileBaseName = [System.IO.Path]::GetFileNameWithoutExtension($Args[0])
$FileExtension = [System.IO.Path]::GetExtension($Args[0])
$FilePath = Split-Path -Parent $Args[0]

$i=1

# ファイル分割
cat $Args[0] -ReadCount $Line | % { $_ > $FilePath\$FileBaseName"_"$i$FileExtension;$i++ }