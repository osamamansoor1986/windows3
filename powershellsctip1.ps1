# Define the directory and file paths
$directoryPath = "C:\jenkins working"
$filePath = "$directoryPath\file1.txt"

# Create the directory if it doesn't exist
if (-Not (Test-Path -Path $directoryPath)) {
    New-Item -ItemType Directory -Path $directoryPath
    Write-Output "Directory 'jenkins working' created at $directoryPath"
} else {
    Write-Output "Directory 'jenkins working' already exists at $directoryPath"
}

# Create the text file if it doesn't exist
if (-Not (Test-Path -Path $filePath)) {
    New-Item -ItemType File -Path $filePath
    Write-Output "File 'file1.txt' created at $filePath"
} else {
    Write-Output "File 'file1.txt' already exists at $filePath"
}

# Optionally, add some content to the file
Add-Content -Path $filePath -Value "This is file1.txt created by PowerShell script."
