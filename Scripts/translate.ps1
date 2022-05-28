# Input Text
param([String]$Text)

$TargetLanguage = "en"
$Uri = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=$($TargetLanguage)&dt=t&q=$Text"

# Get the response from the web request
$Response = Invoke-RestMethod -Uri $Uri -Method Get

$Translation = $Response[0].SyncRoot | ForEach-Object { $_[0] }

# Show Text Translation
$Translation
