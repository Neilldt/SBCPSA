Move-Item –Path C:\inetpub\logs -Destination D:\Logs
Get-ChildItem –Path "D:\Logs" -Recurse | Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays(-30))} | Remove-Item