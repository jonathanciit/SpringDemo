# Define the URL of the application
$AppUrl = "http://localhost:8888"

# Make an HTTP request using curl for debugging
try {
    $response = & curl -Uri $AppUrl
    Write-Host "Response: $response"
} catch {
    Write-Host ("Error: " + $_.Exception.Message)
    exit 1
}