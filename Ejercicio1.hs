media3 x y z = (x+y+z)/3

volumenEsfera radio = (4/3*3.1416*radio^3)

residuo x = rem x 10

rota n xs = drop n xs ++ take n xs 

palindromo xs = xs == reverse xs 

interior xs = tail (init xs)

finales n xs = drop (length xs -n ) xs

distanciaEntrePuntos (x1,y1) (x2,y2) = sqrt((x1-x2)^2+(y1-y2)^2)

