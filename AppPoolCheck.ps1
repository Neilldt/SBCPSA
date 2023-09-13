$AppPoolNames = @("SageOne.Login", "SageOne.Support", "SageOne.Web")

 

foreach ($AppPoolName in $AppPoolNames) {
    # Check the status of the application pool
    $AppPool = Get-WebAppPoolState -Name $AppPoolName

 

    if ($AppPool.Value -eq 'Stopped') {
        Write-Output "The application pool '$AppPoolName' is stopped. Starting it..."
        Start-WebAppPool -Name $AppPoolName
        Write-Output "Application pool '$AppPoolName' has been started."
    }
    else {
        Write-Output "The application pool '$AppPoolName' is already running."
    }
}