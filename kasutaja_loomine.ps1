$KasutajaParool = ConvertTo-SecureString "Qwerty!" -AsPlainText -Force

New-LocalUser "kasutaja1" -Password $KasutajaParool -FullName "Esimene Kasutaja" -Description "Local Account - kasutaja1"