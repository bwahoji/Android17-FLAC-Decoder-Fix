$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$output = Join-Path $root 'Android17-FLAC-Decoder-Fix.zip'
if (Test-Path $output) { Remove-Item -LiteralPath $output -Force }

Compress-Archive -Path (Join-Path $root 'module.prop'),
  (Join-Path $root 'customize.sh'),
  (Join-Path $root 'common.sh'),
  (Join-Path $root 'post-fs-data.sh'),
  (Join-Path $root 'service.sh'),
  (Join-Path $root 'action.sh'),
  (Join-Path $root 'uninstall.sh'),
  (Join-Path $root 'README.txt'),
  (Join-Path $root 'README.md'),
  (Join-Path $root 'LICENSE'),
  (Join-Path $root 'lib64') -DestinationPath $output

Write-Host "Created $output"
Get-FileHash -LiteralPath $output -Algorithm SHA256
