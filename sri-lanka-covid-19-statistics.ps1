$Restparam = @{
    'uri'  = "https://www.hpb.health.gov.lk/api/get-current-statistical"
    Method = 'Get'
}

$response = Invoke-RestMethod @restparam

Write-Host "Sri Lanka COV-ID-19 Statistics from Sri Lanka Health Promotion Bureau" -ForegroundColor Cyan

Write-Host "Updated at $($response.data.update_date_time)" -ForegroundColor DarkCyan

write-host "`n"

write-host "Total: $($response.data.local_total_cases)" -ForegroundColor Yellow -NoNewline

write-host " Active: $($response.data.local_active_cases)" -ForegroundColor Red -NoNewline

write-host " New: $($response.data.local_new_cases)" -ForegroundColor DarkMagenta -NoNewline

write-host " Recovered: $($response.data.local_recovered)" -ForegroundColor Green -NoNewline

write-host " Deaths: $($response.data.local_deaths)" -ForegroundColor Magenta -NoNewline

write-host "`n"

function prompt {

    Write-Host $($(Get-Location) -replace ($env:USERPROFILE).Replace('\', '\\'), "~") -NoNewline
    Write-Host " : " -NoNewline
    Write-Host (Get-Date -Format t) -NoNewline
    Write-Host " : " -NoNewline

    return "> "

}
