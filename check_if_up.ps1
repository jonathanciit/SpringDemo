# Define the URL of the application
$AppUrl = "http://localhost:8888"

# Ignore SSL certificate errors (not recommended for production)
[System.Net.ServicePointManager]::ServerCertificateValidationCallback = {$true}

# Make an HTTP request to the application's health endpoint or root URL
try {
    $Response = Invoke-WebRequest -Uri $AppUrl -UseBasicParsing
    if ($Response.StatusCode -eq 200) {
        Write-Host "Application is accessible."
    } else {
        Write-Host ("Application is not accessible. HTTP response code: " + $Response.StatusCode)
        exit 1
    }
} catch {
    Write-Host ("Application is not accessible. Error: " + $_.Exception.Message)
    exit 1
}