##############################################
# Cyber World Leading Marketing Generator 
# V 0.1
# mRr3b00t
##############################################
#
# Copyright (c) LulzSec Limited
#

#Install-Module -Name BluebirdPS -Scope CurrentUser
#Import-Module BluebirdPS

$param1 =@("Cyber Live-fire","Cyber Range","Cyber Pearl Harbour","Cyber Battlefield","Cyber 911","Cyber Attack","Cyber Weapons","Cyber Bullets","Cyber Food","Cyber Drink","Cyber Warriors","Cyber Medic","Cyber Thief","Cyber Footballer","Cyber Shield","Cyber Armour","Cyber Sandwich","Cyber Toast","Cyber GazpachoSoup","Cyber Warship")

$param2 =@("AI","Machine Learning","Next Generation","World Leading", "Best of Breed")

$param3 = @("Cyer Success", "Cyber Dominance", "Reduced Cyber Risk", "Outstanding cyber precense")

$param4 = @("APT","Wizard Dick","Fancy Chinchilla", "Warlock Panda")

$param5 = @("amazing","fantastic","industry leading")

$param6 = @("TLS weakness","IoT vulnerability","Human error","taking security seriously")

$param7 = @("total compromise","devastating loss","near miss","very luckly escape","world ending")

$param8 = @("Monday","Wednesday","Weekend","Friday")

$param9 = @("Russia","China","North Korea","Iran")


$activity = $param1 | Get-Random

$technology = $param2 | Get-Random

$outcome = $param3 | Get-Random

$threat = $param4 | Get-Random

$team = $param5 | Get-Random

$reason= $param6 | Get-Random

$impact = $param7 | Get-Random

$Day = $param8 | Get-Random

$attribution = $param9 | Get-Random

$generated = [DateTimeOffset]::Now.ToUnixTimeSeconds()




$Narrative = "Breaking: Our $team team have engaged in $activity, protecting the world against $threat. Last $Day the victim organization experienced a $impact cyber attack. This was due to $reason . attackers could be from $attribution."

write-host $Narrative -ForegroundColor Red
$measureObject = $Narrative | Measure-Object -Character;
$count = $measureObject.Characters
write-host "There are $count many words in the generated text"

$twitterURLbase = "https://twitter.com/intent/tweet?text="

$URLEncode = [System.Web.HTTPUtility]::UrlEncode("$narrative")
$post = $twitterURLbase + $URLEncode
$post

#Set-TwitterAuthentication

#Publish-Tweet -TweetText $narrative
