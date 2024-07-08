# Define environment variables
$destinationDir = "C:\temp1"
$fileName = "output.txt" # Replace with your filename if it's set as an environment variable

# Create destination directory if it doesn't exist
if (-Not (Test-Path -Path $destinationDir)) {
    New-Item -Path $destinationDir -ItemType Directory
    Write-Output "Directory '$destinationDir' created."
} else {
    Write-Output "Directory '$destinationDir' already exists."
}

# Define the file path
$filePath = Join-Path -Path $destinationDir -ChildPath $fileName

# Set content to the file using environment variable
Set-Content -Path $filePath -Value $env:Message

Write-Output "File '$filePath' created with content from the environment variable."

