# Define the URL of the application
$AppUrl = "http://localhost:8888"

# Create a WebClient object
$webClient = New-Object System.Net.WebClient

# Make HTTP request
try {
    $response = $webClient.DownloadString($AppUrl)
    Write-Host "Application is accessible."
} catch {
    Write-Host ("Application is not accessible. Error: " + $_.Exception.Message)
    exit 1
}