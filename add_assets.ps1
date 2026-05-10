$AssetDir = "C:\Users\Public\WindhawkAssets\Windows7"
$BaseUrl = "https://raw.githubusercontent.com/ramensoftware/windows-11-taskbar-styling-guide/refs/heads/main/Themes/Windows7/ThemeResources"

$Files = @(
    "orbNormal.png",
    "orbHover.png",
    "orbPressed.png",
    "AeroPeek.png",
    "InactiveNormal.png",
    "InactivePointerOver.png",
    "ActiveNormal.png",
    "overflowNormal.png",
    "overflowPointerOver.png",
    "overflowPressed.png",
    "clockPointerOver.png",
    "clockPressed.png",
    "trayPointerOver.png",
    "trayPressed.png",
    "desktopNormal.png",
    "desktopPointerOver.png",
    "desktopPressed.png",
    "requestingAttention.png",
    "notRunningPointerOver.png",
    "notRunningPressed.png",
    "taskbarBackground.png",
    "taskview.png",
    "search.png",
    "widgetsPointerOver.png",
    "widgetsPressed.png"
)

foreach ($File in $Files) {
    $Url = "$BaseUrl/$File"
    $Out = Join-Path $AssetDir $File
    Write-Host "Downloading $File"
    Invoke-WebRequest -Uri $Url -OutFile $Out
}

Get-ChildItem $AssetDir | Unblock-File
Get-ChildItem $AssetDir
