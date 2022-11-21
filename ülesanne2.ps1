echo "Siseta oma eesnimi:"
$Eesnimi = Read-Host
echo "Sisesta oma perenimi:"
$Perenimi = Read-Host
echo "Toimub kasutaja $Eesnimi.$Perenimi kustutamine"´#
$KasutajaNimi = "$Eesnimi" + "." + "$Perenimi"
#
$ErrorActionPreference = "SilentlyContinue"
#
Remove-LocalUser $KasutajaNimi
if (!$?)
{
echo "Tekkis probleem kasutaja loomisega"
}
else
{
echo "Konto $Kasutajanimi on kustutatud!"
}
$ErrorActionPreference = "Stop"