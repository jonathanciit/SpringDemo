# Define the URL of the application
$AppUrl = "http://localhost:8989"

# Make an HTTP request using curl for debugging
try {
    Start-Sleep -Seconds 5
    $response = & curl -Uri $AppUrl
    Write-Host "Response: $response"
} catch {
    Write-Host ("Error: " + $_.Exception.Message)
    exit 1
}



#powershell.exe -File "C:\Users\Admin\IdeaProjects\SpringDemo\check_if_up.ps1"