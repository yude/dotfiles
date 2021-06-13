# �A�Z���u���ǂݍ���
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# ��������s���̃t�H�[���쐬
$form = New-Object System.Windows.Forms.Form
$form.Text = "�����s��"
$form.Size = New-Object System.Drawing.Size(260,180)

# OK�{�^���̐ݒ�
$OKButton = New-Object System.Windows.Forms.Button
$OKButton.Location = New-Object System.Drawing.Point(40,100)
$OKButton.Size = New-Object System.Drawing.Size(75,23)
$OKButton.Text = "OK"
$OKButton.DialogResult = "OK"

# �L�����Z���{�^���̐ݒ�
$CancelButton = New-Object System.Windows.Forms.Button
$CancelButton.Location = New-Object System.Drawing.Point(130,100)
$CancelButton.Size = New-Object System.Drawing.Size(75,23)
$CancelButton.Text = "�L�����Z��"
$CancelButton.DialogResult = "Cancel"

# ���x���̐ݒ�
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(10,30)
$label.Size = New-Object System.Drawing.Size(250,20)
$label.Text = "��������s������͂��Ă��������B"

# ���̓{�b�N�X�̐ݒ�
$textBox = New-Object System.Windows.Forms.TextBox
$textBox.Location = New-Object System.Drawing.Point(10,70)
$textBox.Size = New-Object System.Drawing.Size(225,50)

# �L�[�ƃ{�^���̊֌W
$form.AcceptButton = $OKButton
$form.CancelButton = $CancelButton

# �{�^�������t�H�[���ɒǉ�
$form.Controls.Add($OKButton)
$form.Controls.Add($CancelButton)
$form.Controls.Add($label)
$form.Controls.Add($textBox)

#�t�H�[������Ɏ�O�ɕ\��
$form.Topmost = $True

#�t�H�[�����A�N�e�B�u�ɂ��A�e�L�X�g�{�b�N�X�Ƀt�H�[�J�X��ݒ�
$form.Add_Shown({$textBox.Select()})

# �����`�F�b�N
if([string]::IsNullorEmpty($Args[0])) {
    [System.Windows.Forms.MessageBox]::Show("��������t�@�C�����w�肳��Ă��܂���B", "�����t�@�C���w��G���[")
    exit
}

# �t�@�C���̑��݃`�F�b�N
if(-not(Test-Path $Args[0])){
    [System.Windows.Forms.MessageBox]::Show("�����Ώۃt�@�C�������݂��܂���", "�t�@�C���w��G���[")
    exit
}

# �t�H�[���̕\��
$result = $form.ShowDialog()

if ($result -eq "OK") {
    $Line = $textBox.Text
}
else {
    exit
}

# �����s�������l���m�F
if (-not([int]::TryParse($Line,[ref]$null))) {
    [System.Windows.Forms.MessageBox]::Show("���l�ȊO�̒l�������Ă��邽�߁A�������I�����܂��B", "�����s���w��G���[")
    exit
}

# ������t�@�C�����w��p
$FileBaseName = [System.IO.Path]::GetFileNameWithoutExtension($Args[0])
$FileExtension = [System.IO.Path]::GetExtension($Args[0])
$FilePath = Split-Path -Parent $Args[0]

$i=1

# �t�@�C������
cat $Args[0] -ReadCount $Line | % { $_ > $FilePath\$FileBaseName"_"$i$FileExtension;$i++ }