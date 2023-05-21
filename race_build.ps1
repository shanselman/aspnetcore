$sw = [Diagnostics.Stopwatch]::StartNew()

. ./activate.ps1
./eng/build.cmd

$sw.Stop()

Write-Host $([string]::Format("Build time: {0:d2}:{1:d2}:{2:d2}",
                                  $sw.Elapsed.Hours,
                                  $sw.Elapsed.Minutes,
                                  $sw.Elapsed.Seconds))