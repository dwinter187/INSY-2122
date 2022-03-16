-- 1. Wieviele Flüge starten vom Vienna International Airport (VIE)?
-- 3
SELECT COUNT(*) FROM flights WHERE departure-airport = 'VIE'; 

-- 2. Wie viele afrikanische Länder sind gespeichert?
-- 58
SELECT COUNT(*) FROM countriesfull WHERE countriename = 'Africa';

-- 3. Wie viele Sitze hat eine Flugzeugflotte, die von jedem Airbus-Typ 
-- ein Flugzeug besitzt (= wieviele Passagiere kann ich dann maximal 
-- transportieren)?
-- 4187
 
-- 4. Wie viele Sitze haben Boing-Flugzeuge im Durchschnitt pro Reihe?
-- 6.8

-- 5. Wie lange dauert ein gespeicherter Flug im Durchschnitt?
 
-- 6. Wie breit ist das breiteste Flugzeug?
-- 75.362
SELECT MAX(span) FROM planes;