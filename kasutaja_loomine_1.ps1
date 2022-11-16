# Script start
if($args.Count -ne 3){
    echo '.\SkriptiNimi kasutajanimi "eesnimi perenimi" "Konto kirjeldus"'}
else {
    $KasutajaNimi = $args[0]
    $TaisNimi = $args[1]
    $KontoKirjeldus = $args[2]
    # Parool
    $KasutajaParool = ConvertTo-SecureString "Qwerty!" -AsPlainText -Force
    # Kasutaja loomine andmetega
    New-LocalUser "$KasutajaNimi" -Password $KasutajaParool -FullName "$TaisNimi" -Description "$KontoKirjeldus"
}
# End of script