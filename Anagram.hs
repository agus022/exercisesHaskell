module Anagram where

import Data.Char (toLower)
import Data.List (nub, sort)  -- Agrega sort a las importaciones

-- Definición de tipo para representar Anagram
newtype Anagram = Anagram String deriving (Show, Eq)

-- Función para verificar si dos cadenas son anagramas
checkAnagram :: Anagram -> String -> Bool
checkAnagram (Anagram source) word =
  let sourceList = map toLower source
      wordList = map toLower word
  in sort sourceList == sort wordList

-- Función para encontrar anagramas en una lista de palabras
findAnagrams :: Anagram -> [String] -> [String]
findAnagrams source = filter (checkAnagram source)