# Write-Log

Write-Log is a basic powershell module that wraps a given message with some time information and returns it for logging.

Currently, it is meant to be used inside functions that are wrapped with a Tee-Object call like this

```ps1
#some function that will call l
function main{
    l "some status info"
}
#run main and tee to logfile.txt
& { main } 2>&1 | Tee-Object -Append logfile.txt
```

