echo "Siseta oma eesnimi:"
$Eesnimi = Read-Host
echo "Sisesta oma perenimi:"
$Perenimi = Read-Host
echo "Luuakse kasutaja $Eesnimi.$Perenimi"´#$KasutajaParool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force
#
$KasutajaNimi = "$Eesnimi" + "." + "$Perenimi"
$TaisNimi = "$Eesnimi" + " " + "$Perenimi"
#
$ErrorActionPreference = "SilentlyContinue"
#
New-LocalUser $KasutajaNimi -Password $KasutajaParool -FullName "$TaisNimi"
if (!$?)
{
echo "Tekkis probleem kasutaja loomisega"
}
$ErrorActionPreference = "Stop"