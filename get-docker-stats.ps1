while ($true) {
    docker stats --no-stream | Out-File -Append -FilePath stats.txt
    Start-Sleep -Seconds 1
}