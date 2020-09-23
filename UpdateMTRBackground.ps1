$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://www.gregoryzuckerman.ie/CustomBackgroundTheme.png","C:\Users\Skype\AppData\Local\Packages\Microsoft.SkypeRoomSystem_8wekyb3d8bbwe\LocalState\>CustomBackgroundTheme.png")
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://www.gregoryzuckerman.ie/SkypeSettings.xml","C:\Users\Skype\AppData\Local\Packages\Microsoft.SkypeRoomSystem_8wekyb3d8bbwe\LocalState\SkypeSettings.xml")
if (-not (Test-Path -LiteralPath 'c:\temp')) {
        New-Item -Path 'c:\temp' -ItemType Directory 
        }
else {
    "Directory already existed"
}