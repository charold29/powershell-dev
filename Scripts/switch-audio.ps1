$defaultid = '{0.0.0.00000000}.{6ad457be-5e9e-4643-b891-15cc48b75bf0}'
$sonyid = '{0.0.0.00000000}.{853c659a-ea4e-434c-a2ed-42857a5bc1e1}'

$speakers = Get-AudioDevice -Id $sonyid

if ($speakers.default) {
    Set-AudioDevice -Id $defaultid
    write-output 'Setting to DefaultLenovo-Speaker'
} else {
    Set-AudioDevice -Id $sonyid
    write-output 'Setting to Sony-Speaker'
}