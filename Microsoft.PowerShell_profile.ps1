Set-Location "C:\"

function notepad {
    & "C:\Program Files\Notepad++\notepad++.exe" @args
}

function cd2 {
	Set-Location ../..
}

function cd3 {
	Set-Location ../../..
}