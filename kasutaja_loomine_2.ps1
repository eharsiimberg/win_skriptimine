# Fail kus on andmed
$Fail = "C:\Users\Administrator\Documents\kasutajad.csv"
# Loeme faili sisu
$Kasutajad = Import-Csv $Fail -Encoding Default -Delimiter ";"
#
foreach ($kasutaja in $kasutajad)
{
    $KasutajaNimi = $kasutaja.Kasutajanimi
    $Taisnimi = $kasutaja.Taisnimi
    $KontoKirjeldus = $kasutaja.KontoKirjeldus
    $Parool = $kasutaja.Parool | ConvertTo-SecureString -AsPlainText -Force
    #
    New-LocalUser -Name $KasutajaNimi -Password $Parool -FullName "$Taisnimi" -Description "$KontoKirjeldus"
}