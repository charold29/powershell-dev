$speakerid = '{0.0.0.00000000}.{6dac7e0b-2fd3-48e4-b24d-2e6d8d83f0f1}'
$headsetid = '{0.0.0.00000000}.{904d2999-3a4a-44b5-a632-7bb32207a638}'

$speakers = Get-AudioDevice -Id $speakerid

if ($speakers.default) {
    Set-AudioDevice -Id $headsetid
    write-output 'Setting to HyperX-HeadSet'
} else {
    Set-AudioDevice -Id $speakerid
    write-output 'Setting to Sony-Speaker'
}