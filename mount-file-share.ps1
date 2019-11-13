  param (
    [Parameter(Mandatory=$true)][string]$account,
    [Parameter(Mandatory=$true)][string]$password,
    [Parameter(Mandatory=$true)][string]$share,
    [string]$drive = "Z"
 )

cmdkey /add:$account.file.core.windows.net /user:Azure\$account /pass:$password
net use "${drive}:" \\$account.file.core.windows.net\$share /persistent:Yes 
