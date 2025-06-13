# Opintorekisteri
Opintorekisteritietokanta, joka on tehty opiskelijoiden tietojen, suoritettujen kurssien ja kurssien arvosanojen kokoamiseen ja näiden näyttämisen web-sovelluksessa. Tämä ohjelma on Node.js-sovellus, joka käyttää Express.js-kehystä web-palvelimen luomiseen. Tietokantaan on luotu taulut: Opiskelija, Opintojakso, Arviointi. Lisäksi käytössä on Suoritus näkymä, joka yhdistää opiskelijan, opintojakson ja arvioinnin tiedot selkeämmäksi kokonaisuudeksi. 
Opiskelija taulun rakenne: Sisältää sarakkeet idOpiskelija, Etunimi, Sukunimi, Osoite, Luokkatunnus. 
Opintojakso taulun rakenne: Sisältää sarakkeet idOpintojakso, Koodi, Laajuus, Nimi. 
Arviointi taulun rakenne:Sisältää sarakkeet idArviointi, Päivämäärä, Arvosana, Opiskelija_idOpiskelija, Opintojakso_idOpintojakso.
Suoritus näkymän tiedot: Sukunimi, Etunimi, Nimi (Opintojakson), Arvosana. (Tiedot täydentyvät muista tauluista)

Opintorekisterin esittelyvideon linkki on palautettu OAMK Moodlen palautuslaatikkoon.
