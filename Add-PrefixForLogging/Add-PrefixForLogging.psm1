using namespace System.Diagnostics
$script:sw = [Stopwatch]::StartNew()
$script:pl = [long]::MaxValue.ToString().Length
$script:df = "M/d/yyyy hh:mm:ss.fff tt zzz"
function Add-PrefixForLogging {
    [alias("l")]
    param ($t = "")
    $script:sw.Stop()
    $dts = (get-date).ToString($script:df)
    $ticks = $script:sw.ElapsedTicks.ToString().PadLeft($script:pl,' ')
    $dts,$ticks,$t -join "`t"
    $script:sw = [Stopwatch]::StartNew()
}
Export-ModuleMember -Function * -Alias *