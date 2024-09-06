# Membaca konten file
$content = Get-Content -Path "C:\Windows\Temp\joko\_tmp.txt"
$foundStrings = @()
# Mencari string di dalam tanda kutip
foreach ($line in $content) {
    # Mencari semua string yang ada di dalam tanda kutip
    $matches = [regex]::Matches($line, 'name="([^"]*)"')
    foreach ($match in $matches) {
        $value = $match.Groups[1].Value
	#$foundStrings += $value	
        Write-Host "String yang ditemukan: $($value)"
    }
}
