$speakerid = '{0.0.0.00000000}.{958789a9-9849-44a9-854b-4e5adc1a8154}'
$headsetid = '{0.0.0.00000000}.{08227e29-cab5-4086-b2d8-2d43a34fd394}'

$speakers = Get-AudioDevice -Id $speakerid

if ($speakers.default) {
    Set-AudioDevice -Id $headsetid
    write-output 'Setting to HyperX-HeadSet'
} else {
    Set-AudioDevice -Id $speakerid
    write-output 'Setting to Sony-Speaker'
}