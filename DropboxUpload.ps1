Add-Type -Path "Path\To\Dropbox.Api.v2.dll"

$accessToken = ""  # Dropbox API 토큰 엑세스
$filePath = "$env:USERPROFILE\Desktop\"  # 업로드할 파일의 경로
$uploadPath = ""  # 업로드 될 Dropbox 경로

$dropboxClient = New-Object Dropbox.Api.DropboxClient($accessToken)

$uploadTask = $dropboxClient.Files.UploadAsync(
    $uploadPath,
    [Dropbox.Api.Files.WriteMode]::Add, 
    $false, 
    $null,  
    $null,   
    $filePath 
)

$uploadTask.Wait()

Write-Host "File uploaded to Dropbox successfully." 
