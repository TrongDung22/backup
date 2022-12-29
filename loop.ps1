$i = 30
do {
    Write-Host $i
    Test-Connection localhost -Count 1 | Out-File -FilePath PingLog.txt –Append
    Sleep 60
    $i--
} while ($i -gt 0)
