$headers = @{ Metadata = "true" }
$metadataUrl = "http://169.254.169.254/metadata/instance?api-version=2021-08-01"

$response = Invoke-WebRequest -Headers $headers -Uri $metadataUrl
$jsonOutput = $response.Content | ConvertFrom-Json | ConvertTo-Json -Depth 100

Write-Output $jsonOutput
