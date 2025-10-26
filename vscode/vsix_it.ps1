$extension_source = ".\bunzao-vscode-theme"
$vsix_name = "bunzao-vscode-theme"

Remove-Item $vsix_name".vsix" -Force -ErrorAction SilentlyContinue
Compress-Archive -Path $extension_source\* -DestinationPath $vsix_name".zip" -Force
Rename-Item -Path $vsix_name".zip" -NewName $vsix_name".vsix"
