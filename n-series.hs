module Beer (song) where 

-- Definición de la función 'song'
song :: String
-- 'song' es una función que devuelve la letra de la canción '99 Bottles of Beer on the Wall'
song = versos 99

-- Función para generar los versos de la canción
versos :: Int -> String
-- Caso base: cuando 'n' es 0, indicando que no hay más botellas de cerveza
versos 0 = "\nNo more bottles of beer on the wall, no more bottles of beer.Vamonos a la base\n"
-- Caso recursivo: cuando 'n' es distinto de 0, se genera un nuevo verso concatenando 'ptrA', 'ptrB' y los siguientes versos
versos n = ptrA n ++ ptrB (n-1) ++ versos (n-1)

-- Función para generar el primer verso de cada estrofa
ptrA :: Int -> String
-- Si solo hay una botella de cerveza, se utiliza "bottle" en singular, de lo contrario, "bottles" en plural
ptrA n = show n ++ " " ++ bottle n ++ " of beer on the wall, " ++ show n ++ " " ++ bottle n ++ " of beer."

-- Función para generar el segundo verso de cada estrofa
ptrB :: Int -> String
-- Se describe la acción de tomar una botella y pasarla, junto con el número actual de botellas
ptrB n = "Take one down and pass it around, " ++ show n ++ " " ++ bottle n ++ " of beer on the wall.\n"

-- Función auxiliar para determinar si se usa "bottle" o "bottles" dependiendo de la cantidad de botellas
bottle :: Int -> String
-- Si solo hay una botella de cerveza, se utiliza "bottle" en singular, de lo contrario, "bottles" en plural
bottle n = if n == 1 then "bottle" else "bottles"
