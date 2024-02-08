# Set console color to green on black
$host.ui.RawUI.BackgroundColor = "Black"
$host.ui.RawUI.ForegroundColor = "Green"

# Set font size and style
$font = New-Object System.Drawing.Font("Consolas", 16, [System.Drawing.FontStyle]::Bold)
[Console]::SetWindowSize(80, 25)  # Set console window size

# Function to display a matrix-like message
function Show-MatrixMessage {
    param (
        [string]$message
    )
    Clear-Host
    $messageArray = $message.ToCharArray()
    foreach ($char in $messageArray) {
        Write-Host -NoNewline $char -ForegroundColor Green
        Start-Sleep -Milliseconds (Get-Random -Minimum 80 -Maximum 150)
    }
    Write-Host  # New line after the message
    Start-Sleep -Seconds 3
}

# Display Matrix-style messages
Show-MatrixMessage "Wake up, Neo..."
Show-MatrixMessage "The Matrix has you..."
Show-MatrixMessage "Follow the white rabbit."
Show-MatrixMessage "Knock, knock, Neo."
