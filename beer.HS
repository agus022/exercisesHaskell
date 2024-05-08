module Main where

-- Función que devuelve la cadena correspondiente al número de botellas
bottles :: Int -> String
bottles 0 = "No more bottles"
bottles 1 = "1 bottle"
bottles n = show n ++ " bottles"

-- Función que devuelve la cadena correspondiente a la acción de tomar una botella
takeOne :: Int -> String
takeOne 0 = "Go to the store and buy some more."
takeOne 1 = "Take it down and pass it around"
takeOne _ = "Take one down and pass it around"

-- Función que genera un verso para una cantidad dada de botellas
verse :: Int -> String
verse n
  | n <= 0 = "No more bottles of beer on the wall, no more bottles of beer.Vamonos a la base\n"
  | otherwise = bottles n ++ " of beer on the wall, " ++
                bottles n ++ " of beer.\n" ++
                takeOne n ++ ", " ++
                bottles (n - 1) ++ " of beer on the wall.\n"

-- Función que genera la canción completa desde un punto inicial hasta uno final
song :: Int -> Int -> String
song start end = unlines $ map verse [start, start-1 .. max end 0]

-- Función principal que imprime la canción completa
main :: IO ()
main = putStrLn $ song 99 0
