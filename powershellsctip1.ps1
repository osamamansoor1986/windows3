# Set environment variables
$env:DIR_PATH = "C:\jenkins-working1"
$env:FILE_PATH = "$env:DIR_PATH\file11.txt"

# Define the directory and file paths using environment variables
$directoryPath = $env:DIR_PATH
$filePath = $env:FILE_PATH

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

