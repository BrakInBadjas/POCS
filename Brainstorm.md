Brainstorm session 25/10/2016

4 different kind of tags (
4 verschillende soorten passen (bewoners, medewerkers, gesloten afdeling, artsen)
 - medewerkers
 - bewoners
 - lopers 

alle arduino's/scanners een ID, als in database staat dat je toegang hebt mag je er door.

snel mensen toegang moeten geven / afnemen
snel authorisatie controleren

datamodel maken (medewerker/client database)
database met deuren

elke arduino een public key (encryption)

De arduino heeft:
 Een eigen (deur) id
 De public key van de server
 Een eigen (unieke) public/private key pair
 
De server heeft:
 De public keys van alle arduino's
 een eigen (unieke) public/private key pair
 Een database met gehashde UID's en deuren waar ze toegang tot hebben
 
De key heeft:
 Een eigen UID

De arduino leest een key en krijgt daar een UID van.
De arduino maakt een value/key pair aan met de (deur) id en key UID.
De public key van de server op de arduino wordt gebruikt om het value/key pair te versleutelen.
De arduino verstuurt dit value/key pair beveiligd naar de server.

De server gebruikt haar private key om het value/key pair te ontsleutelen.
De server hasht de key UID.
De server vergelijkt de gehashde key UID tegen de server en haalt daaruit of de key is geauthoriseerd.
De server maakt een value/key pair aan met de key UID en een boolean value op basis van de authorisatie.
De server gebruikt de (deur) id om de Public key van de arduino op te vragen uit de database.
De server gebruikt de public key van de arduino om het value/key pair te versleutelen.
De server verstuurd het value/key pair beveiligd naar de arduino.

De arduino gebruikt zijn private key om het value/key pair te ontsleutelen.
De arduino controleert of de verstuurde key UID overeen komt met de orgineel verstuurde key UID.
De arduino voert de vereisde actie uit op basis van de authorisatie.


##Database design

![Database desgin](database.png "Database design")