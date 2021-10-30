Add-Type -assembly System.Windows.Forms
$main_form = New-Object System.Windows.Forms.Form
$main_form.Text ='how many times can you close this window?'
$main_form.AutoSize = $true
$Label2 = New-Object System.Windows.Forms.Label
$Label1 = New-Object System.Windows.Forms.Label
$Label3 = New-Object System.Windows.Forms.Label
$Label4 = New-object System.Windows.Forms.Label
$button1 = New-Object System.Windows.Forms.Button
$number = 0
$plus = 1
$SplashText = "pie","eat pie","ello","hello","better than cookie clicker","pie server is actually The ultimate server.","eat... pie...","learning the alphabet is fun", "my password is ThefunnyBatateCheese","punch or train"
for(;;){
$main_form.WindowState = "normal"
$Label1.Text = "times closed"
$Label1.AutoSize = $true
$Label1.Location  = New-Object System.Drawing.Point(0,20)
$main_form.Controls.Add($Label1)
$Label2.Text = $number
$Label2.AutoSize = $true 
$Label2.Location  = New-Object System.Drawing.Point(0,40)
$main_form.Controls.Add($Label2)
$Label3.Text = "how many times can you close this window?"
$Label3.AutoSize = $true
$Label3.Location  = New-Object System.Drawing.Point(0,5)
$main_form.Controls.Add($Label3)
$Label4.Text = Get-Random -InputObject $SplashText
$Label4.AutoSize = $true
$Label4.Location = New-Object System.Drawing.Point(0,60)
$main_form.Controls.Add($Label4) 
$main_form.Controls.Add($button1)
$main_form.ShowDialog()
$number += $plus
$main_form.Width = Get-Random -minimum 300 -maximum 600
$main_form.Height = Get-Random -minimum 200 -maximum 600
}