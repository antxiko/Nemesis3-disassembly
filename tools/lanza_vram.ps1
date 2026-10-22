# lanza_vram.ps1 <dir> "<tiempos>" "<teclas>" "<pokes>": UN openMSX con tools/omsx_vram.tcl,
# fuera del sandbox, y espera a que acabe. Las demas opciones, las de omsx_vram.tcl.
param([string]$dir, [string]$tiempos = "30 45 60", [string]$teclas = "", [string]$pokes = "", [string]$bp = "", [string]$wp = "", [string]$fase = "", [string]$inmortal = "", [string]$escrituras = "", [string]$cuadros = "", [string]$juega = "", [string]$jefe = "", [string]$sin = "", [string]$debil = "", [string]$rom = "nemesis3.rom", [string]$maquina = "C-BIOS_MSX1")
$env:VRAM_BP = $bp
$env:VRAM_WP = $wp
$env:VRAM_FASE = $fase
$env:VRAM_INMORTAL = $inmortal
$env:VRAM_ESCRITURAS = $escrituras
$env:VRAM_CUADROS = $cuadros
$env:VRAM_JUEGA = $juega
$env:VRAM_JEFE = $jefe
$env:VRAM_SIN = $sin
$env:VRAM_DEBIL = $debil
$raiz = Split-Path -Parent $PSScriptRoot
Set-Location $raiz
$env:VRAM_SALIDA = "work/$dir"
$env:VRAM_TIEMPOS = $tiempos
$env:VRAM_TECLAS = $teclas
$env:VRAM_POKES = $pokes
New-Item -ItemType Directory -Force "work/$dir" | Out-Null
$args_ = @("-machine", $maquina, "-carta", $rom, "-romtype", "KonamiSCC", "-script", "tools/omsx_vram.tcl")
Start-Process -FilePath "C:\Program Files\openMSX\openmsx.exe" -ArgumentList $args_ -Wait -WindowStyle Minimized
"hecho" | Out-File -Encoding ascii "work/$dir/fin.txt"
