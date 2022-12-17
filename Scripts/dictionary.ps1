# Input Word
param([Parameter(Mandatory)][String]$Word, [Int]$IndexMeaning)

# Source API: https://dictionaryapi.dev/ 
$Uri = "https://api.dictionaryapi.dev/api/v2/entries/en/$Word"

# Get the response from web request
Try{
	$Response = Invoke-RestMethod -Uri $Uri -Method Get
# For 404 No Definitions Found
} Catch {
	$Meaning = "Word not found, try another"
}

$Measure = ($Response | Measure-Object).Count

if ( $Measure -eq 1){
	$Meaning = $Response.meanings.definitions[$IndexMeaning].definition
}

#Show Word Meaning
$Meaning
