$speakerid = '{0.0.0.00000000}.{6ed0a5b5-84c0-431c-a733-e259ce70746c}'
$headsetid = '{0.0.0.00000000}.{def97b93-a053-4d91-9b7e-eea69b25759d}'

$speakers = Get-AudioDevice -Id $speakerid

if ($speakers.default) {
    Set-AudioDevice -Id $headsetid
    write-output 'Setting to HyperX-HeadSet'
} else {
    Set-AudioDevice -Id $speakerid
    write-output 'Setting to Sony-Speaker'
}