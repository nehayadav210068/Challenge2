# Challenge2
This PowerShell code sets the $headers variable to include the Metadata header set to true, indicating that the request is for metadata. 
It then sets the $metadataUrl variable to the Azure instance metadata URL, which is used to retrieve the metadata.

The Invoke-WebRequest cmdlet is used to make a request to the metadata URL, and the response content is stored in the $response variable. 
The ConvertFrom-Json cmdlet is used to convert the response content to a PowerShell object, and the ConvertTo-Json cmdlet is used to convert the PowerShell object to JSON format with a depth of 100. Finally, the JSON output is printed to the console using the Write-Output cmdlet.

Note that this code assumes that the script is running on an Azure virtual machine. 
If you are running this code outside of an Azure virtual machine or on a non-Azure machine, the metadata URL may not be accessible. 
Additionally, the api-version parameter may need to be updated to a more recent version, depending on the version of the Azure API that is being used.
