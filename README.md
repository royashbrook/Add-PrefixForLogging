# Add-PrefixForLogging

Add-PrefixForLogging is a basic powershell module that adds some prefix information to a string for logging.

Currently, it is meant to be used inside functions that are wrapped with a Tee-Object call like this

```ps1
#some function that will call l
function main{
    l "some status info"
}
#run main and tee to logfile.txt
& { main } 2>&1 | Tee-Object -Append logfile.txt
```

