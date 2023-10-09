$file = Get-Item -Path \\filepath...

$last_modified = '12 September ‎2022 ‏‎03:43:17'

$time = $file.lastwritetime.DateTime

if($time -eq $last_modified){
    write-host "OK            OK             OK             10590 OK" -ForegroundColor green 
}else{
    Add-Type -AssemblyName System.speech
    $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
    $speak.SelectVoice('Microsoft Zira Desktop')
    $speak.GetInstalledVoices().VoiceInfo
    [system.media.systemsounds]::Exclamation.play()
    $speak.Speak("Error")
    $speak.Dispose()
    write-host "Error" -ForegroundColor red
    write-host "File compromised!" -ForegroundColor red
}

pause