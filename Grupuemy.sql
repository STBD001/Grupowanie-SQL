1. Ile patków należących do każdego gatunku było zaobserwowanego, kórego było najwięcej 
ROZWIĄZANIE:
SELECT
    nazwa_zwyczajowa,
    SUM(Liczebnosc) AS IlePtakow
FROM
    gatunki
JOIN obserwacje ON gatunki.ID_gatunku = obserwacje.ID_gatunku
GROUP BY
    nazwa_zwyczajowa
ORDER BY
    IlePtakow
DESC
    
2. W którym powiecie liczba zaobserwowanych ptaków z gatunku dzięcioł jest największa, a w którym najmniejsza?
ROZWIĄZANIE: 
SELECT
    powiat,
    SUM(liczebnosc) AS Wlesie
FROM
    gatunki
JOIN obserwacje ON gatunki.ID_gatunku = obserwacje.ID_gatunku
JOIN lokalizacje ON lokalizacje.ID_lokalizacji = obserwacje.ID_lokalizacji
WHERE
    zachowanie = "zeruje" AND nazwa_zwyczajowa LIKE "dzieciol%" AND opis LIKE "%las%"
GROUP BY
    powiat
ORDER BY
    Wlesie
DESC
    ;